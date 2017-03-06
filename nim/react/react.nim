import sequtils
import tables

type
  CallbackID = int
  Callback = proc(val: int)
  CellFormula = proc(vals: seq[int]): int
  Cell* = ref object
    value: int
    dependents*: seq[Cell]
    callbacks: Table[CallbackID, Callback]
    inputCells: seq[Cell]
    formula: CellFormula

# not used in my implementation
type Reactor = ref object

proc newReactor*(): Reactor = Reactor()

proc createInput*(this: Reactor, value: int): Cell =
  Cell(value: value, dependents: newSeq[Cell]())

proc applyFormula(this: Cell): tuple[oldValue: int, newValue: int] =
  var inputs = this.inputCells.map(proc(input: Cell): int = input.value)
  var oldValue = this.value
  var newValue = this.formula(inputs)
  this.value = newValue
  (oldValue: oldValue, newValue: newValue)

proc updateValue(this: Cell, callbacksTriggered: var seq[CallbackID]) =
  var (oldValue, newValue) = this.applyFormula()

  if oldValue != newValue:
    for id, callback in pairs(this.callbacks):
      if not callbacksTriggered.contains(id):
        callbacksTriggered.add(id)
        callback(newValue)

  for dependent in this.dependents:
    dependent.updateValue(callbacksTriggered)

proc value*(this: Cell): int =
  this.value

proc `value=`*(this: Cell, value: int) =
  this.value = value
  var callbacksTriggered = newSeq[CallbackID]()
  for dependent in this.dependents:
    dependent.updateValue(callbacksTriggered)

proc createCompute*(this: Reactor, cells: seq[Cell], formula: CellFormula): Cell =
  var formulaCell = Cell(inputCells: cells, formula: formula, dependents:
  newSeq[Cell](), callbacks: initTable[CallbackID, Callback]())

  for ancestor in cells:
    ancestor.dependents.add(formulaCell)

  discard formulaCell.applyFormula()
  formulaCell

var nextCallbackID = -1

proc newCallbackID(): CallbackID =
  inc(nextCallbackID)
  nextCallbackID

proc addCallback*(this: Cell, callback: Callback): CallbackID =
  var id = newCallbackID()
  this.callbacks[id] = callback
  return id

proc removeCallback*(this: Cell, callbackId: CallbackID) =
  this.callbacks.del(callbackId)


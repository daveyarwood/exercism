import sequtils

type
  Cell* = ref object
    value*: int
    dependents*: seq[Cell]
    inputCells: seq[Cell]
    formula: proc(vals: seq[int]): int

# not used in my implementation
type Reactor = ref object

proc newReactor*(): Reactor = Reactor()

proc createInput*(this: Reactor, value: int): Cell =
  Cell(value: value, dependents: newSeq[Cell]())

proc updateValue(this: Cell) =
  var inputs = this.inputCells.map(proc(input: Cell): int = input.value)
  this.value = this.formula(inputs)

proc `value=`*(this: Cell, value: int) =
  for dependent in this.dependents:
    dependent.updateValue()

proc createCompute*(this: Reactor, cells: seq[Cell], formula: proc(vals: seq[int]): int): Cell =
  var formulaCell = Cell(inputCells: cells, formula: formula)

  for ancestor in cells:
    ancestor.dependents.add(formulaCell)

  formulaCell.updateValue()
  formulaCell

# TODO after getting the above to work
proc addCallback*(this: Cell, callback: proc(val: int)): proc(val: int) =
  discard

# TODO after getting the above to work
proc removeCallback*(this: Cell, callback: proc(val: int)) =
  discard


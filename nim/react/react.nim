# Failing here with:
#
# react_test.nim(5, 6) template/generic instantiation from here
# react_test.nim(9, 11) Error: undeclared field: 'value'
#
# I'm not sure why the Nim compiler doesn't think a Cell can have a value
# field.
#
# I followed the pattern here:
# https://nim-lang.org/docs/manual.html#types-object-variants

type
  CellKind = enum ckInput, ckFormula
  Cell = ref CellObj
  CellObj = object
    case kind: CellKind
    of ckInput:
      value: int
    of ckFormula:
      formula: int # not correct, FIXME

type Reactor = ref object of RootObj
  cells: seq[Cell]

proc newReactor*(): Reactor =
  return Reactor(cells: newSeq[Cell]())

proc createInput*(this: Reactor, value: int): Cell =
  var inputCell = Cell(kind: ckInput, value: value)
  this.cells.add(inputCell)
  return inputCell

# FIXME
# proc createCompute*(this: Reactor): Cell =
#   var formulaCell = Cell(kind: ckFormula)
#   this.cells.add(formulaCell)
#   return formulaCell


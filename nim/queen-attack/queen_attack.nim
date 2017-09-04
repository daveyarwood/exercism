import future, sequtils, strutils

# VALIDATION

proc validatePositions(white, black: tuple[rank, file: int]) =
  for position in @[white, black]:
    if any(@[position.rank, position.file], (n) => n < 0 or n > 7):
      raise newException(ValueError, "Position off the board.")
  if white == black:
    raise newException(ValueError, "White and black queens in the same position.")

# TASK 1: PRINTING A BOARD

proc printPosition(
  rank, file: int, white, black: tuple[rank, file: int]
): string =
  if rank == white.rank and file == white.file: "W"
  elif rank == black.rank and file == black.file: "B"
  else: "_"

proc printRank(rank: int, white, black: tuple[rank, file: int]): string =
  lc[ printPosition(rank, file, white, black) | ( file <- 0..7 ), string ].join

proc board*(white, black: tuple[rank, file: int]): seq[string] =
  validatePositions(white, black)
  lc[ printRank(i, white, black) | ( i <- 0..7 ), string ]

# TASK 2: DETERMINING IF ONE QUEEN CAN ATTACK THE OTHER

proc horizontalMoves(queen: tuple[rank, file: int]): seq[tuple[rank, file: int]] =
  lc[ (queen.rank, file) | (file <- 0..7, file != queen.file),
      tuple[rank, file: int] ]

proc verticalMoves(queen: tuple[rank, file: int]): seq[tuple[rank, file: int]] =
  lc[ (rank, queen.file) | (rank <- 0..7, rank != queen.rank),
      tuple[rank, file: int] ]

proc diagonalMoves(queen: tuple[rank, file: int]): seq[tuple[rank, file: int]] =
  lc[ (rank, file) | (rank <- 0..7, file <- 0..7,
                      (rank != queen.rank and file != queen.file),
                      (file - rank == queen.file - queen.rank or
                       rank + file == queen.rank + queen.file)),
      tuple[rank, file: int] ]

proc possibleMoves(queen: tuple[rank, file: int]): seq[tuple[rank, file: int]] =
  concat(horizontalMoves(queen), verticalMoves(queen), diagonalMoves(queen))

proc canAttack*(white, black: tuple[rank, file: int]): bool =
  validatePositions(white, black)
  possibleMoves(white).contains(black)

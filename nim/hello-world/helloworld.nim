import strutils

proc helloworld*(name: string): string =
  return "Hello, $1!" % [name]

proc helloworld*(): string =
  return helloworld("World")


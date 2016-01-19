# Accumulate

Implement the `accumulate` operation, which, given a collection and an operation to perform on each element of the collection, returns a new collection containing the result of applying that operation to each element of the input collection.

For example, given the collection of numbers:

- 1, 2, 3, 4, 5

And the operation:

- square a number

Your code should be able to produce the collection of squares:

- 1, 4, 9, 16, 25

Check out the test suite to see the expected function signature.

## Restrictions

Keep your hands off that collect/map/fmap/whatchamacallit functionality
provided by your standard library!
Solve this one yourself using other basic tools instead.

Elixir specific: it's perfectly fine to use `Enum.reduce` or
`Enumerable.reduce`.

Lisp specific: it's perfectly fine to use `MAPCAR` or the equivalent,
as this is idiomatic Lisp, not a library function.

### Getting started
First install lua and [luarocks][2] using [homebrew][1]

    $ brew install lua

Then install [busted][3] testing framework for lua

    $ luarocks install busted

Then run your test

    $ busted bob_test.lua

Other resources

  1. [Lua Style Guide][4]
  2. [Learn Lua in 15 minutes][5]

[1]: http://brew.sh/
[2]: http://luarocks.org/
[3]: http://olivinelabs.com/busted/
[4]: https://github.com/Olivine-Labs/lua-style-guide
[5]: http://tylerneylon.com/a/learn-lua/

## Source

Conversation with James Edward Gray II [view source](https://twitter.com/jeg2)

class Triangle
  constructor: (@a, @b, @c) ->
    @validate()

  validate: ->
    [a, b, c] = [@a, @b, @c].sort()
    throw 'negative sides are illegal' if [a, b, c].some((x) -> x < 0)
    throw 'violation of triangle inequality' unless a + b > c

  kind: ->
    return 'equilateral' if @a == @b and @b == @c
    return 'isosceles'   if @a == @b or @b == @c or @a == @c
    return 'scalene'

module.exports = Triangle

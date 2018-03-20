class TreeNode
  constructor: (@data) ->

  insert: (value) ->
    slot = if value > @data then 'right' else 'left'
    if @[slot] == undefined
      @[slot] = new TreeNode(value)
    else
      @[slot].insert(value)

  each: (f) ->
    @left.each(f) unless @left == undefined
    f(@data)
    @right.each(f) unless @right == undefined

module.exports = TreeNode

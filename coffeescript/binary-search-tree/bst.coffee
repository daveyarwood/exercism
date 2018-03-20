class TreeNode
  constructor: (@data) ->

  insert: (value) ->
    slot = if value > @data then 'right' else 'left'
    @[slot]?.insert(value) or @[slot] = new TreeNode(value)

  each: (f) ->
    @left?.each(f)
    f(@data)
    @right?.each(f)

module.exports = TreeNode

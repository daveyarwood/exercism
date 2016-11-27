class Words
  constructor: (string) ->
    @words = string.replace(/[^a-zA-Z0-9 ]/g, '').split /\s+/

  count: () ->
    @words.reduce ((acc, word) ->
      word = word.toLowerCase()
      acc[word] ?= 0
      acc[word]++
      acc), {}

module.exports = Words

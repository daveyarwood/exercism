sortStr = (str) -> str.split('').sort().join('')

isAnagramOf = (word) ->
  (candidate) ->
    candidate != word && sortStr(candidate) == sortStr(word)

class Anagram
  constructor: (word) ->
    @word = word.toLowerCase()

  match: (candidates) ->
    candidates.map((s) -> s.toLowerCase()).filter(isAnagramOf(@word))

module.exports = Anagram

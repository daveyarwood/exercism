" Returns a representation of a string with all letters lowercase, in
" alphabetical order.
function! SortString(str)
  return sort(split(tolower(a:str), '\zs'))
endfunction

" Returns true if word1 is an anagram of word2.
function! AnagramOf(word1, word2)
  return a:word1 !=? a:word2 && SortString(a:word1) ==# SortString(a:word2)
endfunction

" Given a word and a list of possible anagrams, select the correct sublist.
"
" Hints:
"
"   - Same words don't match.
"   - Cases are treated insensitivley.
"   - The returned list is sorted.
"
" Example:
"
"   :echo Anagram('foo', ['foo', 'bar', 'oof', 'Ofo'])
"   ['Ofo', 'oof']
"
function! Anagram(word, candidates) abort
  return sort(filter(a:candidates, {i, c -> AnagramOf(a:word, c)}))
endfunction

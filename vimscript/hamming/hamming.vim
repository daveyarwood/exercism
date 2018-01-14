" This function takes two strings which represent strands and returns
" their Hamming distance.
function! Hamming(strand1, strand2)
  if strlen(a:strand1) != strlen(a:strand2)
    throw "The two strands must have the same length."
  endif

  let s1 = split(a:strand1, '\zs')
  let s2 = split(a:strand2, '\zs')

  let distance = 0

  for i in range(0, strlen(a:strand1) - 1)
    if get(s1, i) !=# get(s2, i)
      let distance += 1
    endif
  endfor

  return distance
endfunction

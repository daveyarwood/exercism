" This function takes two strings which represent strands and returns
" their Hamming distance.
function! Hamming(strand1, strand2)
  if strlen(a:strand1) != strlen(a:strand2)
    throw "The two strands must have the same length."
  endif

  let distance = 0

  for i in range(strlen(a:strand1))
    if a:strand1[i] !=# a:strand2[i]
      let distance += 1
    endif
  endfor

  return distance
endfunction

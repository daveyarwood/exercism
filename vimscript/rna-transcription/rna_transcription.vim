"
" This function takes a DNA strand and returns its RNA complement.
"
"   G -> C
"   C -> G
"   T -> A
"   A -> U
"
" If the input is invalid, returns an empty string.
"
" Example:
"
"   :echo ToRna('ACGTGGTCTTAA')
"   UGCACCAGAAUU
"
function! ToRna(strand) abort
  let dna_to_rna = {
        \ 'G': 'C',
        \ 'C': 'G',
        \ 'T': 'A',
        \ 'A': 'U'
        \ }

  let result = ''

  for dna in split(a:strand, '\zs')
    if !has_key(dna_to_rna, dna) | return '' | endif
    let result .= dna_to_rna[dna]
  endfor

  return result
endfunction


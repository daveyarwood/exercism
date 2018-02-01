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
  if a:strand !~# '^[GCTA]\+$' | return '' | endif
  return tr(a:strand, 'GCTA', 'CGAU')
endfunction


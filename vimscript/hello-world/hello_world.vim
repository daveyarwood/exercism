function! Hello(...) abort
  let name = (a:0 == 1 ? a:1 : 'World')
  return "Hello, " . l:name . "!"
endfunction

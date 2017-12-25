function! DivisibleBy(n, year) abort
  return a:year % a:n == 0
endfunction

" This function takes a year and returns 1 if it's a leap year
" and 0 otherwise.
function! IsLeap(year) abort
  return DivisibleBy(400, a:year) ||
       \ (DivisibleBy(4, a:year) && !DivisibleBy(100, a:year))
endfunction

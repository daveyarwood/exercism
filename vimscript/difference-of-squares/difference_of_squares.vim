" Workaround for the fact that `range()` throws an error if it gets a negative
" number. I think it should just return an empty range.
function! Range(n)
  return a:n < 0 ? [] : range(a:n)
endfunction

" I can't believe I have to use `eval` for this...
function! Sum(numbers)
  return len(a:numbers) == 0 ? 0 : eval(join(a:numbers, ' + '))
endfunction

" Workaround for the fact that `pow()` returns a Float, which makes the tests
" fail because they don't use numerical equality.
function! Squared(n)
  return float2nr(pow(a:n, 2))
endfunction

"
" Find the difference between the square of the sum and the sum of the squares
" of the first N natural numbers.
"
" Examples:
"
"   :echo SquareOfSum(3)
"   36
"   :echo SumOfSquares(3)
"   14
"   :echo Difference(3)
"   22
"
function! Difference(number) abort
  return SquareOfSum(a:number) - SumOfSquares(a:number)
endfunction

function! SquareOfSum(number) abort
  return Squared(Sum(Range(a:number + 1)))
endfunction

function! SumOfSquares(number) abort
  return Sum(map(Range(a:number + 1), {i, n -> Squared(n)}))
endfunction

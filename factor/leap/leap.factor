IN: leap

: divisible? ( x y -- t-or-f )
  mod zero? ;

:: my-leap-year? ( year -- leap-year? )
   year 4 divisible?
   year 100 divisible? not
   and
   year 400 divisible?
   or
   ;

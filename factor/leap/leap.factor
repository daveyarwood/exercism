USING: locals math.functions ;
IN: leap

:: my-leap-year? ( year -- leap-year? )
   year 4 divisor?
   year 100 divisor? not
   and
   year 400 divisor?
   or
   ;

function! Answer(drivel) abort
  if a:drivel =~# '[A-Z]' && a:drivel !~# '[a-z]'
    return "Whoa, chill out!"
  elseif a:drivel =~# '?$'
    return "Sure."
  elseif a:drivel =~# '^\s*$'
    return "Fine. Be that way!"
  else
    return "Whatever."
  endif
endfunction

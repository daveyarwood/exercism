function! Shouting(drivel) abort
  return match(a:drivel, '\C[A-Z]') != -1 &&
        \ match(a:drivel, '\C[a-z]') == -1
endfunction

function! Question(drivel) abort
  return match(a:drivel, '?$') != -1
endfunction

function! Silence(drivel) abort
  return match(a:drivel, '^\s*$') != -1
endfunction

function! Answer(drivel) abort
  if Shouting(a:drivel)
    return "Whoa, chill out!"
  elseif Question(a:drivel)
    return "Sure."
  elseif Silence(a:drivel)
    return "Fine. Be that way!"
  else
    return "Whatever."
  endif
endfunction

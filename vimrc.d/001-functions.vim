function! GlogForward()
  let l:line=line('.')
  try
    cnext
  catch /^Vim\%((\a\+)\)\=:E553/
    echo 'Already at the newest version'
  endtry
  call setpos('.', [0, l:line, 0, 0])
endfunction

function! GlogBackward()
  let l:line=line('.')
  try
    cprev
  catch /^Vim\%((\a\+)\)\=:E553/
    echo 'Already at the oldest version'
  endtry
  call setpos('.', [0, l:line, 0, 0])
endfunction


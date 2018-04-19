function GlogForward()
  let l:line=line('.')
  try
    cnext
  catch /^Vim\%((\a\+)\)\=:E553/
    echo 'Already at the newest version'
  endtry
  call setpos('.', [0, l:line, 0, 0])
endfunction

function GlogBackward()
  let l:line=line('.')
  try
    cprev
  catch /^Vim\%((\a\+)\)\=:E553/
    echo 'Already at the oldest version'
  endtry
  call setpos('.', [0, l:line, 0, 0])
endfunction

function LocateRacer()
  if !has('nvim')
    return
  endif

  if executable('racer')
    let g:deoplete#sources#rust#racer_binary = systemlist('which racer')[0]
  endif

  if executable('rustc')
    let rustc_root = systemlist('rustc --print sysroot')[0]
    let rustc_src_dir = rustc_root . '/lib/rustlib/src/rust/src'
    if isdirectory(rustc_src_dir)
      let g:deoplete#sources#rust#rust_source_path = rustc_src_dir
    endif
  endif
endfunction

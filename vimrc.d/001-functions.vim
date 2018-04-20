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

function! LocateRacer()
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

" copied from http://netbuz.org/vimrc.html
function! CSettings()
  setlocal cindent
  setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
  setlocal synmaxcol=200  " Prevent massive slowdown with large C files
  setlocal foldmethod=marker

  " nnoremap <buffer> <silent> <leader>A :GNOMEAlignArguments<CR>
  " nnoremap <buffer> <silent> <leader>gq [[=a}:GNOMEAlignArguments<CR>

  " TODO: need a new mapping for this one
  " nnoremap <buffer> <silent> <leader>gD [[}O
  " nnoremap <buffer> <silent> <leader>gd [{}O
  nnoremap <buffer> <silent> <leader>gi ?^#include<CR>:nohlsearch<CR>
  let b:surround_105 = "#if 0\n\r\n#endif"
endfunction


function! SetHeight(percentage)
  exec 'resize' float2nr(&lines * a:percentage / 100)
  if line('$') <= winheight(0)
    exec 'resize' line('$')
  else
    echo "Scroll for more results"
  end
endfunction

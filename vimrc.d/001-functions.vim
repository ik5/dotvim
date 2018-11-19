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
    let l:rustc_root = systemlist('rustc --print sysroot')[0]
    let l:rustc_src_dir = l:rustc_root . '/lib/rustlib/src/rust/src'
    if isdirectory(l:rustc_src_dir)
      let g:deoplete#sources#rust#rust_source_path = l:rustc_src_dir
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
    echo 'Scroll for more results'
  end
endfunction

function! MakeSession()
  let b:sessiondir = $HOME . '/tmp/sessions' . getcwd()
  if (filewritable(b:sessiondir) != 2)
    exe 'silent !mkdir -p ' b:sessiondir
    redraw!
  endif
  let b:filename = b:sessiondir . '/session.vim'
  exe 'mksession! ' . b:filename
endfunction

function! LoadSession()
  let b:sessiondir = $HOME . '/tmp/sessions' . getcwd()
  let b:sessionfile = b:sessiondir . '/session.vim'
  if (filereadable(b:sessionfile))
    exe 'source ' b:sessionfile
  else
    echo 'No session loaded.'
  endif
endfunction

function! CloseQuickFix()
  if !has(&buftype)
   finish
  endif
  if &buftype !=? 'quickfix'
    finish
  endif

  let b:qf_isLoc = ! empty(getloclist(0))
  if b:qf_isLoc == 1
:lclose
  else
:cclose
  endif
endfunction

" Based on https://gist.github.com/jonmorehouse/8442341
function! GenerateUUID()
  python << EOF
import uuid
import vim

# output a uuid to the vim variable for insertion below
vim.command("let generatedUUID = \"%s\"" % str(uuid.uuid4()))

EOF

  " insert the python generated uuid into the current cursor's position
  :execute 'normal i' . generatedUUID . ''
endfunction

function! RubyPath()
  return split(execute('!ruby -r rubygems -e ''puts Gem.user_dir'' '))[-1]
endfunction

function! RubyBinPath()
  return RubyPath() . '/bin/'
endfunction

function! RubyNeoVimPath()
  if filereadable(RubyBinPath() . 'neovim-ruby-host')
    return RubyBinPath() . 'neovim-ruby-host'
  endif

  if filereadable(expand('$HOME/bin/neovim-ruby-host'))
    return expand('$HOME/bin/neovim-ruby-host')
  endif

  if filereadable('/usr/local/bin/neovim-ruby-host')
    return '/usr/local/bin/neovim-ruby-host'
  endif

  return ''
endfunction

function! s:SmartSplit(file)
  let l:split_cmd = (winwidth(0) >= 100) ? 'vsplit' : 'split'
  execute l:split_cmd . ' ' . a:file
endfunction

function! s:vueSetFileType()
  if searchpair('<script', '', '</script>', 'bnW')
    set ft=javascript
  elseif searchpair('<style', '', '</style>', 'bnW')
    set ft=css
  else
    set ft=html
  endfunction

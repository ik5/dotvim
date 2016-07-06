
" ==================================================
" actions to be done prior for configuration
" ==================================================
for f in split('~/.vim/pre_configrc.d/*.vim', '\n')
  exec 'source' f
endfor

" ==================================================
" Source the files ~/.vim/vimrc.d/
" ==================================================
for f in split(glob('~/.vim/vimrc.d/*.vim'), '\n')
  exe 'source' f
endfor

" ==================================================
" actions to be done after configuration
" ==================================================
for f in split(glob('~/.vim/post_configrc.d/*.vim'), '\n')
  exe 'source' f
endfor




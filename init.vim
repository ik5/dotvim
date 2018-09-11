" set runtimepath+=~/.vim,~/.vim/after
" set packpath+=~/.vim
" source ~/.vimrc

set runtimepath+=~/.config/nvim,~/.config/nvim/after
set packpath+=~/.config/nvim


" ==================================================
" actions to be done prior for configuration
" ==================================================
for f in split(glob('~/.config/nvim/pre_configrc.d/*.vim'), '\n')
  exec 'source' f
endfor

" ==================================================
" Source the files ~/.vim/vimrc.d/
" ==================================================
for f in split(glob('~/.config/nvim/vimrc.d/*.vim'), '\n')
  exe 'source' f
endfor

" ==================================================
" actions to be done after configuration
" ==================================================
for f in split(glob('~/.config/nvim/post_configrc.d/*.vim'), '\n')
  exe 'source' f
endfor



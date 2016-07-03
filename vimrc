
" ==================================================
" Source the files ~/.vim/vimrc.d/
" ==================================================
for f in split(glob('~/.vim/vimrc.d/*.vim'), '\n')
    exe 'source' f
endfor


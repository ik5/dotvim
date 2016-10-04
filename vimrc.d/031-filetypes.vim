" ==================================================
" FileType and Indentation settings
"
" Recommended: Don't rely on this, use editorconfig
" in your project
" ==================================================

" define less filetype
au BufNewFile,BufRead *.less set filetype=less

" make the smarty .tpl files html files for our purposes
au BufNewFile,BufRead *.tpl set filetype=html

" json
au! BufRead,BufNewFile *.json set filetype=json

" jquery
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype xhtml setlocal ts=2 sw=2 expandtab
autocmd Filetype xml setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype less setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab 
autocmd FileType ruby compiler ruby
autocmd FileType ruby let b:dispatch = 'ruby -c -w %'

autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 noexpandtab

" Instead of reverting the cursor to the last position in the buffer, we
" set it to the first line when editing a git commit message
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])


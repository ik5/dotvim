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
autocmd Filetype scss setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd FileType ruby compiler ruby
autocmd FileType ruby let b:dispatch = 'ruby -c -w %'
autocmd FileType ruby let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'
autocmd FileType ruby compiler ruby
autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

" display it as 2 tabs like I like, but make it 8 as Go likes
autocmd FileType go setlocal noexpandtab tabstop=4 shiftwidth=4 norelativenumber
autocmd FileType txt setlocal noet ts=2 sw=2
autocmd FileType md setlocal noet ts=2 sw=2
autocmd FileType vim setlocal expandtab shiftwidth=2 tabstop=2

au Filetype python let g:jedi#popup_on_dot = 0
au Filetype python setlocal ts=4 sts=4 sw=4 et ai
au Filetype python setlocal commentstring=#%s define=^\s*\\(def\\\\|class\\)

autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab

" Instead of reverting the cursor to the last position in the buffer, we
" set it to the first line when editing a git commit message
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

" put quickfix window always to the bottom
autocmd FileType qf wincmd J

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

au FileType c,h,cpp,gobject call CSettings()
au FileType c,h,cpp,vala,javascript nnoremap <buffer> <silent> ) :call search('(\\|)\\|{\\|}\\|\[\\|\]')<CR>
au FileType c,h,cpp,vala,javascript nnoremap <buffer> <silent> ( :call search('(\\|)\\|{\\|}\\|\[\\|\]', 'b')<CR>

au BufRead,BufNewFile *.jsx set ft=javascript syntax=javascript

augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
  autocmd FileType scss setlocal iskeyword+=-
augroup END


au BufRead,BufNewFile *.scss set filetype=scss.css

" Make sure that .babelrc, and eslintrc files set as json
au BufRead,BufNewFile .babelrc set filetype=json
au BufRead,BufNewFile .eslintrc set filetype=json

" remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

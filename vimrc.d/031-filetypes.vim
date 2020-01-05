" ==================================================
" FileType and Indentation settings
"
" Recommended: Don't rely on this, use editorconfig
" in your project
" ==================================================

augroup Ruby
  au Filetype ruby setlocal ts=2 sw=2 expandtab
  au FileType ruby compiler ruby
  au FileType ruby let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'
  au FileType ruby nnoremap <leader>dbg orequire "pry"; binding.pry<esc>
augroup END

augroup Python
  au Filetype python let g:jedi#popup_on_dot = 0
  au Filetype python setlocal ts=4 sts=4 sw=4 et ai
  au Filetype python setlocal commentstring=#%s define=^\s*\\(def\\\\|class\\)
augroup END

augroup GIT
  " Instead of reverting the cursor to the last position in the buffer, we
  " set it to the first line when editing a git commit message
  au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])
  " Do linebreak after 78 chars
  au FileType gitcommit au! BufEnter COMMIT_EDITMSG set textwidth=72 colorcolumn=72
  " set gitconfig file also as gitconfig and not only .gitconfig
  au BufRead,BufNewFile gitconfig,*gitconfig setlocal filetype=gitconfig

  au BufEnter PULLREQ_EDITMSG setlocal filetype=gitcommit
  au BufEnter PULLREQ_EDITMSG setlocal filetype=gitcommit
  au FileType gitrebase silent! RebaseSquash
  au FileType gitcommit set spell
  au BufRead,BufNewFile git/config set filetype=gitconfig
augroup END

augroup Golang
  " display it as 2 tabs like I like, but make it 8 as Go likes
  au FileType go setlocal noet ts=2 sw=2
  " disable tab character showing in golang
  au FileType go setlocal listchars=tab:\ \ ,trail:·,extends:›,precedes:‹,nbsp:␣
augroup END

augroup Texts
  au FileType txt setlocal noet ts=2 sw=2
  au FileType md setlocal expandtab shiftwidth=2 tabstop=2
  au BufNewFile,BufReadPost *.md set filetype=markdown
  au FileType vim setlocal expandtab shiftwidth=2 tabstop=2

  " put quickfix window always to the bottom
  au FileType qf wincmd J
augroup END

augroup JAVASCRIPT
  au FileType vue syntax sync fromstart
  au FileType vue call VueSetFileType()
  au Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
  " jquery
  au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

  au BufRead,BufNewFile *.jsx set ft=javascript syntax=javascript
augroup END

augroup JSON
  au! BufRead,BufNewFile *.json set filetype=json
  " Make sure that .babelrc, and eslintrc files set as json
  au BufRead,BufNewFile .eslintrc,.babelrc set filetype=json

  if exists('g:taggedtemplate#tagSyntaxMap')
    au FileType,BufNewFile,BufRead javascript,typescript,jsx call taggedtemplate#applySyntaxMap()
  endif
augroup END

augroup web
  " make the smarty .tpl files html files for our purposes
  au BufNewFile,BufRead *.tpl set filetype=html

  au Filetype html,xhtml,xml setlocal ts=2 sw=2 expandtab
  " Treat <li> and <p> tags like the block tags they are
  au Filetype html,xhtml let g:html_indent_tags = 'li\|p'

  " Allow variables to include dashes
  au FileType css,scss setlocal iskeyword+=-
  au Filetype css,scss setlocal iskeyword+=$
  au BufRead,BufNewFile *.scss set filetype=scss.css

  au Filetype css,scss setlocal ts=2 sw=2 expandtab

  " define less filetype
  au BufNewFile,BufRead *.less set filetype=less
  au Filetype less setlocal ts=2 sw=2 expandtab
augroup END

augroup Rust
  au FileType rust execute LocateRacer()
augroup END

augroup General
  " remove trailing whitespace on save
  au BufWritePre * :%s/\s\+$//e
  au BufEnter * :syntax sync fromstart
  au FileType c,h,cpp,gobject call CSettings()
  au FileType c,h,cpp,vala,javascript nnoremap <buffer> <silent> ')' :call search('(\\|)\\|{\\|}\\|\[\\|\]')<CR>
  au FileType c,h,cpp,vala,javascript nnoremap <buffer> <silent> '(' :call search('(\\|)\\|{\\|}\\|\[\\|\]', 'b')<CR>
augroup END

augroup YAML
  au BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
  au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
augroup END

"augroup fmt
"  au BufWritePre * undojoin | Neoformat
"augroup END

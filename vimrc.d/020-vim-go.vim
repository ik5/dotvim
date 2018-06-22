" ============================================
" Some go settings
" ============================================

let g:go_async_run = 1
let g:go_fmt_command = 'goimports'
"let g:go_fmt_command = 'gofmt'
let g:go_list_type = 'quickfix'

" do not create an Hello World template
let g:go_template_autocreate = 0

" place terminal horizontal
let g:go_term_mode = 'split'

" open new terminal
let g:go_term_enabled = 1

" show errors
let g:go_fmt_fail_silently = 0

" syntax-highlighting for Functions, Methods and Structs
let g:go_highlight_space_tab_error = 1
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" auto listener on save
let g:go_metalinter_autosave = 1

" look for gopath
let g:go_autodetect_gopath = 1

" display the variable type under the cursor
let g:go_auto_type_info = 1

"autocmd FileType go autocmd BufWritePre <buffer> GoFmt

let g:go_auto_sameids=1

" create a go doc comment based on the word under the cursor
function! s:create_go_doc_comment()
  norm "zyiw
  execute ':put! z'
  execute ':norm I// \<Esc>$'
endfunction


" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

augroup Golang
  au FileType go nnoremap <leader>godoc :<C-u>call <SID>create_go_doc_comment()<CR>

  " Show a list of interfaces which is implemented by the type under your cursor
  au FileType go nnoremap <Leader>gos <Plug>(go-implements)

  " Show type info for the word under your cursor
  au FileType go nnoremap <Leader>goi <Plug>(go-info)

  " Open the relevant Godoc for the word under the cursor
  au FileType go nnoremap <Leader>goh <Plug>(go-doc)
  au FileType go nnoremap <Leader>gov <Plug>(go-doc-vertical)

  " Open the Godoc in browser
  au FileType go nnoremap <Leader>gobd <Plug>(go-doc-browser)

  " Alternate between test and file
  au FileType go nnoremap <Leader>goa :GoAlternate<cr>

  au FileType go nnoremap <Leader>got :GoAddTags<cr>
  au FileType go nnoremap <Leader>goT :GoAddTags
  au FileType go vnoremap <Leader>got :GoAddTags<cr>
  au FileType go vnoremap <Leader>goT :GoAddTags

  au FileType go nnoremap <Leader>gov <Plug>(go-def-vertical)
  au FileType go nnoremap <Leader>gos <Plug>(go-def-split)

  au FileType go nnoremap <Leader>gol <Plug>(go-metalinter)

  au FileType go nnoremap <leader>gob :<C-u>call <SID>build_go_files()<CR>
  au FileType go nnoremap <leader>got  <Plug>(go-test)
  au FileType go nnoremap <leader>gor  <Plug>(go-run)
  au FileType go nnoremap <leader>goe  <Plug>(go-install)
  au FileType go nnoremap <leader>goc <Plug>(go-coverage)

  " Run all possible linters from go
  au FileType go nnoremap <leader>go<c-l> :GoMetaLinter<CR>
augroup END



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

" create a go doc comment based on the word under the cursor
function! s:create_go_doc_comment()
  norm "zyiw
  execute ":put! z"
  execute ":norm I// \<Esc>$"
endfunction

au FileType go nnoremap <leader>ui :<C-u>call <SID>create_go_doc_comment()<CR>

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

augroup go
  autocmd!

  " Show a list of interfaces which is implemented by the type under your cursor
  au FileType go nmap <Leader>s <Plug>(go-implements)

  " Show type info for the word under your cursor
  au FileType go nmap <Leader>i <Plug>(go-info)

  " Open the relevant Godoc for the word under the cursor
  au FileType go nmap <Leader>gd <Plug>(go-doc)
  au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

  " Open the Godoc in browser
  au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

  au FileType go nmap <Leader>v <Plug>(go-def-vertical)
  au FileType go nmap <Leader>s <Plug>(go-def-split)

  au FileType go nmap <Leader>i <Plug>(go-info)
  au FileType go nmap <Leader>l <Plug>(go-metalinter)

  au FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
  au FileType go nmap <leader>t  <Plug>(go-test)
  au FileType go nmap <leader>r  <Plug>(go-run)
  au FileType go nmap <leader>e  <Plug>(go-install)
  au FileType go nmap <leader>c <Plug>(go-coverage)
augroup END



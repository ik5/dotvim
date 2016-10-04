" ============================================
" Some go settings
" ============================================

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
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" auto linter on save
let g:go_metalinter_autosave = 1


" Show a list of interfaces which is implemented by the type under your cursor
au FileType go nmap <Leader>s <Plug>(go-implements)

" Show type info for the word under your cursor
au FileType go nmap <Leader>i <Plug>(go-info)

" Open the relevant Godoc for the word under the cursor
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

" Open the Godoc in browser
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

" Run/build/test/coverage
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

"autocmd FileType go autocmd BufWritePre <buffer> GoFmt


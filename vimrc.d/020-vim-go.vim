" ============================================
" Some go settings
" ============================================

let g:go_async_run = 1
let g:go_fmt_command = 'goimports'
"let g:go_fmt_command = 'gofmt'
let g:go_list_type = 'locationlist'
" let g:go_list_height = 5
" do not create an Hello World template
let g:go_template_autocreate = 0

" place terminal horizontal
let g:go_term_mode = 'split'
" open new terminal
let g:go_term_enabled = 1

" show errors
let g:go_fmt_fail_silently = 0
let g:go_jump_to_error = 0

" enable vim-go text object
let g:go_textobj_enabled = 1
" text object for functions also include the comments when using 'af'
let g:go_textobj_include_function_doc = 1
" Consider the variable of an function assignment to be part of the anonymous
" function when using the `af` text object
let g:go_textobj_include_variable = 1

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
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_variable_declarations = 0
let g:go_highlight_extra_types = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_operators = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_debug = 1

" auto listener on save
let g:go_metalinter_autosave = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck', 'gofmt', 'gosec']
let g:go_metalinter_autosave_enabled = ['vet', 'golint', 'errcheck', 'gofmt', 'gosec']
let g:go_metalinter_deadline = '1.5m'

" look for gopath
let g:go_autodetect_gopath = 1

" display the variable type under the cursor
let g:go_auto_type_info = 0
let g:go_info_mode = 'gopls'

" Specifies whether `gopls` can be used by vim-go.
let g:go_gopls_enabled = 1
" Specifies whether `gopls` should include suggestions from unimported packages.
let g:go_gopls_complete_unimported = 1
" Specifies whether `gopls` should use deep completion.
let g:go_gopls_deep_completion = 1
" Specifies whether `gopls` should use fuzzy matching for completions.
let g:go_gopls_fuzzy_matching = 1
" Specifies whether `gopls` should run staticcheck checks.
let g:go_gopls_staticcheck = 1
" Specifies whether `gopls` can provide placeholders for function parameters and
" struct fields. When set, completion items will be treated as anonymous
" snippets if UltiSnips is installed and configured to be used as
" |'g:go_snippet_engine'|.
let g:go_gopls_use_placeholders = 1
" Specifies whether `gopls` diagnostics are enabled. Only the diagnostics for
" the current buffer will be processed when it is not set.
let g:go_diagnostics_enabled = 0
" Use this option to define the command to be used for |:GoDef|.
let g:go_def_mode = 'gopls'
" Use this option to define the command to be used for |:GoReferrers|.
let g:go_referrers_mode = 'gopls'


let g:go_snippet_engine = 'automatic'

let g:go_decls_includes = 'func,type,var,const'

let g:go_auto_sameids=0

" do not resue buffer on GoDef
let g:go_def_reuse_buffer=0

" Use this option to enable/disable the default mapping of CTRL-],
" <C-LeftMouse>, g<C-LeftMouse> and (`gd`) for GoDef and CTRL-t for :GoDefPop.
" Disabling it allows you to map something else to these keys or mappings.
let g:go_def_mapping_enabled = 1

let g:go_play_browser_command = 'firefox %URL% &'

" open alternate in split rather on same buffer
let g:go_alternate_mode = 'split'

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
"autocmd FileType go autocmd BufWritePre <buffer> GoFmt
  au FileType go nmap <leader>godoc :<C-u>call <SID>create_go_doc_comment()<CR>

  " Show a list of interfaces which is implemented by the type under your cursor
  au FileType go nmap <Leader>gos <Plug>(go-implements)

  " Show type info for the word under your cursor
  au FileType go nmap <Leader>goi <Plug>(go-info)

  " Open the relevant Godoc for the word under the cursor
  au FileType go nmap <Leader>goh <Plug>(go-doc)
  au FileType go nmap <Leader>gov <Plug>(go-doc-vertical)

  " Open the Godoc in browser
  au FileType go nmap <Leader>gobd <Plug>(go-doc-browser)

  " Alternate between test and file
  au FileType go nnoremap <Leader>goa :GoAlternate<cr>

  au FileType go nnoremap <Leader>go` :GoAddTags<cr>
  au FileType go vnoremap <Leader>go` :GoAddTags<cr>
  au FileType go onoremap <Leader>go` :GoAddTags<cr>
  au FileType go cnoremap <Leader>go` :GoAddTags<cr>
  au FileType go nnoremap <Leader>goT :GoAddTags
  au FileType go vnoremap <Leader>goT :GoAddTags
  au FileType go cnoremap <Leader>goT :GoAddTags
  au FileType go onoremap <Leader>goT :GoAddTags

  au FileType go nmap <Leader>gov <Plug>(go-def-vertical)
  au FileType go nmap <Leader>gd <Plug>(go-def-split)

  au FileType go nmap <Leader>gol <Plug>(go-metalinter)

  au FileType go nmap <leader>gob :<C-u>call <SID>build_go_files()<CR>
  au FileType go nmap <leader>got  <Plug>(go-test)
  au FileType go nmap <leader>gor  <Plug>(go-run)
  au FileType go nmap <leader>goe  <Plug>(go-install)
  au FileType go nmap <leader>goc <Plug>(go-coverage)

  " Run all possible linters from go
  au FileType go nnoremap <leader>go<c-l> :GoMetaLinter!<CR>

  au FileType go nnoremap <leader>gofs :GoFillStruct<CR>
  au FileType go nnoremap <leader>gofi :GoIfErr<CR>

  " au BufWritePost *go :GoMetaLinter!
augroup END

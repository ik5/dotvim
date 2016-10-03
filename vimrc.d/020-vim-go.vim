" ============================================
" Some go settings
" ============================================

let g:go_fmt_command = 'goimports'
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

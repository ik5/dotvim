" =================================
" Syntastic settings
" =================================

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_perl_checker = 1

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

let g:syntastic_html_tidy_exec = 'tidy'
let g:syntastic_ruby_exec = 'ruby'
let g:syntastic_ruby_rubocop_exec='rubocop'

let g:syntastic_javascript_checkers = ['eslint']

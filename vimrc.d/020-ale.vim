
let g:ale_enabled = 1
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_delay = 300
let g:ale_sign_column_always = 1
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠'

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] [%severity%] %s'

" Red background with white text is unreadable, so no background
highlight clear ALEErrorSign
highlight clear ALEWarningSign

function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  return l:counts.total == 0 ? 'OK' : printf(
        \   '%dW %dE',
        \   all_non_errors,
        \   all_errors
        \)
endfunction

set statusline=%{LinterStatus()}

nnoremap <silent> <C-k> <Plug>(ale_previous_wrap)
nnoremap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_javascript_eslint_executable = 'eslint_d'
let g:ale_javascript_eslint_use_global = 0

let g:ale_javascript_prettier_executable = 'prettier'
let g:ale_vue_prettier_executable = 'prettier-vue'

let g:ale_fixers = {
      \'javascript': ['prettier', 'eslint'],
      \ 'vue': ['eslint', 'prettier-vue','prettier'],
      \ 'jsx': ['prettier', 'eslint'],
      \}

" let g:ale_python_flake8_executable = 'flake8-python2'
let g:ale_python_flake8_executable = 'flake8'

let g:ale_linters = {
      \ 'javascript': ['prettier', 'eslint'],
      \ 'vue': ['prettier-vue','prettier', 'eslint'],
      \ 'jsx': ['prettier', 'eslint'],
      \ 'ruby': ['rubocop'],
      \ 'perl': ['syntax-check', 'perl', 'perlcritic'],
      \ 'json': ['jsonlint', 'jq'],
      \ 'go': ['vet', 'golint', 'errcheck', 'gofmt', 'gosec'],
      \}
let g:ale_ruby_rubocop_executable = 'rubocop'
let g:ale_linter_aliases = {'jsx': 'css'}

let g:ale_perl_perl_options = '-c -Mwarnings -Ilib'
let g:ale_perl_perlcritic_showrules = 1

let g:ale_type_map = {
      \'perl': {'ES': 'WS'},
      \ 'perlcritic': {'ES': 'WS', 'E': 'W'},
      \}

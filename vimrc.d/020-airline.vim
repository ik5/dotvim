" ==================================================
" airline
" ==================================================
let g:airline_powerline_fonts = 1
"let g:airline_theme='raven'
let g:airline_theme = 'codedark'

let g:airline#extensions#tabline#enabled = 1

let g:airline_symbols.readonly = '🔒'
if exists('g:loaded_ale_dont_use_this_in_other_plugins_please')
  " For airline integrstion with ale
  let g:airline#extensions#ale#error_symbol = '✖:'
  let g:airline#extensions#ale#warning_symbol = '⚠:'
endif

" ==================================================
" airline
" ==================================================
let g:airline_powerline_fonts = 0
" let g:airline_theme='raven'
" let g:airline_theme = 'codedark'
" let g:airline_theme = 'serene'
" let g:airline_theme = 'tomorrow'
 let g:airline_theme = 'molokai'
"let g:airline_theme = 'badwolf'


"let g:airline_section_x='%b 0x%B : %{airline#util#prepend(airline#extensions#tagbar#currenttag(),0)}%{airline#util#prepend("",0)}%{WebDevIconsGetFileTypeSymbol()} %{airline#util#wrap(airline#parts#filetype(),0)}'

let g:airline_section_x='%b 0x%B : %{airline#util#prepend(airline#extensions#tagbar#currenttag(),0)}%{airline#util#prepend("",0)}%{airline#util#wrap(airline#parts#filetype(),0)}'
let g:airline_section_y='%{airline#util#wrap(airline#parts#ffenc(),0)}'
let g:airline_section_z='%3p%% %#__accent_bold#%{g:airline_symbols.linenr}%4l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__# :%3v '

let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols={}
endif

" let g:airline_symbols.readonly = '🔒'

if exists('g:loaded_ale_dont_use_this_in_other_plugins_please')
  " For airline integrstion with ale

  let g:airline#extensions#ale#error_symbol = '✖:'
  let g:airline#extensions#ale#warning_symbol = '⚠:'
endif

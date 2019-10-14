" ==================================================
" Color scheme and fonts
" ==================================================

if (has('termguicolors'))
  if has('nvim')
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  set t_8b=^[[48;2;%lu;%lu;%lum
  set t_8f=^[[38;2;%lu;%lu;%lum
  set termguicolors " true colors
endif
let g:rehash256 = 1 " molokai looks for it, so placing it first

set background=dark

if has('gui_running')
    set guifont=Mononoki\ Regular\ 12.5,Monaco\ 11,Droid\ Sans\ Mono\ 10,Andale\ Mono\ Regular\ 10,\ Liberation\ Mono\ 10
    set guioptions-=T   " Toolbars off (icons on top of the screen)
else
    set t_Co=256
endif

let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

" ==================================================
" Trailing whitespace handling
" ==================================================
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" Bad Wolf

" Make the gutters darker than the background.
let g:badwolf_darkgutter = 1
" Make the tab line much lighter than the background.
let g:badwolf_tabline = 3
" Turn off HTML link underlining
let g:badwolf_html_link_underline = 1
" Turn on CSS properties highlighting
let g:badwolf_css_props_highlight = 1

" code-dark
let g:codedark_conservative = 0 " be colorful, thank you :)

" gruvbox
let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_underline = 1
let g:gruvbox_undercurl = 1
let g:gruvbox_termcolors = 256

colorscheme badwolf
"colorscheme molokai
" colorscheme codedark
" colorscheme one

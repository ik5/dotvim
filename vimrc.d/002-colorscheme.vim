" ==================================================
" Color scheme and fonts
" ==================================================

set termguicolors " true colors
let g:rehash256 = 1 " molokai looks for it, so placing it first

set background=dark

if has('gui_running')
    set guifont=Monaco\ 11,Droid\ Sans\ Mono\ 10,Andale\ Mono\ Regular\ 10,\ Liberation\ Mono\ 10
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
let g:badwolf_html_link_underline = 0
" Turn on CSS properties highlighting
let g:badwolf_css_props_highlight = 1

" code-dark
let g:codedark_conservative = 0 " be colorful, thank you :)

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has('nvim'))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has('termguicolors'))
    set termguicolors
  endif
endif

if exists('$TMUX')
  set t_8b=^[[48;2;%lu;%lu;%lum
  set t_8f=^[[38;2;%lu;%lu;%lum
endif

colorscheme badwolf
" colorscheme molokai
" colorscheme codedark
" colorscheme one

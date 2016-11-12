" ==================================================
" Color scheme and fonts
" ==================================================

let g:rehash256 = 1 " molokai looks for it, so placing it first

set background=dark

if has("gui_running")
    set guifont=Monaco\ 11,Droid\ Sans\ Mono\ 10,Andale\ Mono\ Regular\ 10,\ Liberation\ Mono\ 10
    set guioptions-=T   " Toolbars off (icons on top of the screen)
else
    set t_Co=256
endif

colorscheme molokai

" ==================================================
" Trailing whitespace handling
" ==================================================
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/


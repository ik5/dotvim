" ==================================================
" Color scheme and fonts
" ==================================================

let g:rehash256 = 1 " molokai looks for it, so placing it first

set background=dark

if has("gui_running")
    set guifont=Droid\ Sans\ Mono\ 12,Andale\ Mono\ Regular\ 12,\ Liberation\ Mono\ 10
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


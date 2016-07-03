" ==================================================
" Color scheme and fonts
" ==================================================
colorscheme molokai
set background=dark

if has("gui_running")
    set guifont=Droid\ Sans\ Mono\ 10,Andale\ Mono\ Regular\ 10,\ Liberation\ Mono\ 9
    set guioptions-=T   " Toolbars off (icons on top of the screen)
else
    set t_Co=256
endif

let g:rehash256 = 1


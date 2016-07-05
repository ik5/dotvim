" ==================================================
" vim-plug  setup
" ==================================================
call plug#begin()

" colorscheme
Plug 'tomasr/molokai'

" Over 70 language packs
Plug 'sheerun/vim-polyglot'

" syntax checking
Plug 'scrooloose/syntastic'

" VCS (git)
Plug 'tpope/vim-fugitive'

" Comments support
Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdcommenter'

" Multi-Cursor support
Plug 'terryma/vim-multiple-cursors'

" Execute compiler async
Plug 'tpope/vim-dispatch'

" Test functions from cache
Plug 'MarcWeber/vim-addon-mw-utils'

" better file explorer for vim
Plug 'scrooloose/nerdtree'

"
"Plug ''

let g:dotvim_ycm_build_command = get(g:, 'dotvim_ycm_build_command', './install.py')
Plug 'Valloric/YouCompleteMe', { 'do': dotvim_ycm_build_command}

call plug#end()

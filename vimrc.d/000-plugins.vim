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

" Fuzzy file, buffer, mru, tag, etc finder
Plug 'ctrlpvim/ctrlp.vim'
" BufExplorer Plugin for Vim
Plug 'jlanzarotta/bufexplorer'

" Vim plugin for the Perl module / CLI script 'ack' 
Plug 'mileszs/ack.vim'

" Rails and bundler
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'

" golang support
Plug 'fatih/vim-go'

" airline status plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Do completion using tab key
Plug 'ervandew/supertab'

"
"Plug ''

let g:dotvim_ycm_build_command = get(g:, 'dotvim_ycm_build_command', './install.py --all')
Plug 'Valloric/YouCompleteMe', { 'do': dotvim_ycm_build_command}

call plug#end()

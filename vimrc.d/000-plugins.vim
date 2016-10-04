" ==================================================
" vim-plug  setup
" ==================================================
call plug#begin()

" colorscheme
Plug 'tomasr/molokai'
Plug 'sjl/badwolf' " TODO: Check and configure it

" Over 70 language packs
Plug 'sheerun/vim-polyglot'

" syntax checking
Plug 'scrooloose/syntastic'

" VCS (git)
Plug 'tpope/vim-fugitive'
" visualise git
Plug 'gregsexton/gitv'
" A Vim plugin which shows a git diff in the gutter 
Plug 'airblade/vim-gitgutter'

" Comments support
"Plug 'tomtom/tcomment_vim'
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

" Rails and bundler
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
" endwith ruby 
Plug 'tpope/vim-endwise'

" golang support
Plug 'fatih/vim-go'

" pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'

" airline status plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Do completion using tab key
Plug 'ervandew/supertab'

" Tagbar - show tags of a project
Plug 'majutsushi/tagbar'

" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Vim plugin: flexible viewer for any documentation
Plug 'powerman/vim-plugin-viewdoc'

" support for rust
Plug 'rust-lang/rust.vim'

" rust racer syntax checking
Plug 'racer-rust/vim-racer'

" visual undo graph
Plug 'sjl/gundo.vim'

let g:dotvim_ycm_build_command = get(g:, 'dotvim_ycm_build_command', './install.py --all')
Plug 'Valloric/YouCompleteMe', { 'do': dotvim_ycm_build_command}

call plug#end()

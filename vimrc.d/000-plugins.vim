" ==================================================
" vim-plug  setup
" ==================================================
if has('nvim')
  call plug#begin('~/.config/nvim/plugged')
else
  call plug#begin('~/.vim/plugged')
endif


" ************************************ colorscheme ****************************
if has('nvim')
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  " Plug 'tanvirtin/monokai.nvim'
  " Plug 'marko-cerovac/material.nvim'
  " Plug 'RRethy/nvim-base16'
  Plug 'Mofiqul/vscode.nvim'
else
  Plug 'tomasr/molokai'
  Plug 'sjl/badwolf'
endif
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" airline support
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/fonts', { 'do': './install.sh' }
" Simple tmux statusline generator with support for powerline symbols and statusline / airline / lightline integration
Plug 'edkolev/tmuxline.vim'
" *****************************************************************************

" **************************** General ****************************************
if has('nvim')
  " All the lua functions I don't want to write twice.
  Plug 'nvim-lua/plenary.nvim'
  " This plugin adds indentation guides to all lines (including empty lines).
  Plug 'lukas-reineke/indent-blankline.nvim'
else
  "  A vim plugin to display the indention levels with thin vertical lines
  Plug 'Yggdroot/indentLine'
endif
" *****************************************************************************

" ******************************** VCS ****************************************
if has('nvim')
  " Git signs written in pure lua 
  Plug 'lewis6991/gitsigns.nvim'
endif
" *****************************************************************************

call plug#end()

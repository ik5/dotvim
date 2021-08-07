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
" Simple tmux statusline generator with support for powerline symbols and
" statusline / airline / lightline integration
Plug 'edkolev/tmuxline.vim'
" *****************************************************************************

" **************************** General ****************************************
if has('nvim')
  " All the lua functions I don't want to write twice.
  Plug 'nvim-lua/plenary.nvim'
  " This plugin adds indentation guides to all lines (including empty lines).
  Plug 'lukas-reineke/indent-blankline.nvim'
  " Lightweight alternative to context.vim implemented with nvim-treesitter.
  Plug 'romgrk/nvim-treesitter-context'
  " Refactor modules for nvim-treesitter
  Plug 'nvim-treesitter/nvim-treesitter-refactor'
  " A File Explorer For Neovim Written In Lua
  Plug 'kyazdani42/nvim-tree.lua'
  " Fix CursorHold Performance.
  Plug 'antoinemadec/FixCursorHold.nvim'
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

" ******************************** LSP ****************************************
if has('nvim')
  " Auto completion plugin for nvim.
  Plug 'hrsh7th/nvim-compe'
  " A collection of common configurations for Neovim's built-in language server
  " client.
  Plug 'neovim/nvim-lspconfig'
  "UltiSnips is the ultimate solution for snippets in Vim. It has many features,
  "speed being one of them.
  Plug 'sirver/UltiSnips'
  " This repository contains snippets files for various programming languages.
  Plug 'honza/vim-snippets'
  " A super powerful autopairs for Neovim. It support multiple character.
  " Requires neovim 0.5+
  Plug 'windwp/nvim-autopairs'
  " Zsh completion source for nvim-compe
  Plug 'tamago324/compe-zsh'
  " Tmux completion source for nvim-compe.
  Plug 'andersevenrud/compe-tmux'
endif
Plug 'liuchengxu/vista.vim'
" *****************************************************************************



call plug#end()

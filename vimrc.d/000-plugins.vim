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
  " Create your own textobjects using tree-sitter queries!
  Plug 'nvim-treesitter/nvim-treesitter-textobjects'
  " Neovim motions on speed!
  Plug 'phaazon/hop.nvim'
else
  "  A vim plugin to display the indention levels with thin vertical lines
  Plug 'Yggdroot/indentLine'
endif
Plug 'simnalamburt/vim-mundo'
" vim match-up: even better % navigate and highlight matching words
Plug 'andymass/vim-matchup'
" Find And Replace Vim plugin
Plug 'brooth/far.vim'
" Comment functions so powerful—no comment necessary.
Plug 'preservim/nerdcommenter'
" *****************************************************************************

" ******************************** VCS ****************************************
if has('nvim')
  " Git signs written in pure lua
  Plug 'lewis6991/gitsigns.nvim'
endif
Plug 'tpope/vim-fugitive'
" A Vim plugin which shows a git diff in the gutter
" A lightweight and powerful git branch viewer for vim.
Plug 'rbong/vim-flog'
" Git branch management
Plug 'sodapopcan/vim-twiggy'
" Easy git merge conflict resolution in Vim
Plug 'christoomey/vim-conflicted'
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

" Programming Languages
if executable('go')
  " https://github.com/fatih/vim-go-tutorial
  Plug 'fatih/vim-go', {'do': ':GoInstallBinaries', 'for': [ 'go' ] }
  " Syntax highlight for Versioned Go
  Plug 'zchee/vim-vgo', { 'for': ['go'] }
endif

if executable('python')
  " Support for python programming
  Plug 'python-mode/python-mode', { 'for': 'python' }
  " Using the jedi autocompletion library for VIM for Python
  Plug 'davidhalter/jedi-vim', { 'for': 'python' }
  " Vim plugin for working with python virtualenvs
  Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }
  " the Requirements File Format syntax support for Vim
  Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
endif

if executable('rustc')
  " support for rust
  Plug 'rust-lang/rust.vim', { 'for': ['rust', 'rs', 'rslib'] }
  " rust racer syntax checking
  Plug 'racer-rust/vim-racer', { 'for': ['rust', 'rs', 'rslib'] }
endif

if has('nvim')
  Plug 'windwp/nvim-ts-autotag'
endif

" vuejs
Plug 'posva/vim-vue'

" config files
Plug 'cespare/vim-toml', { 'for': ['toml']}

" Over 70 language packs
" needed to be set before the plug is loaded
let g:polyglot_disabled = ['vim-go', 'rust.vim'] " disable support for polyglot
Plug 'sheerun/vim-polyglot'
call plug#end()

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
  Plug 'tanvirtin/monokai.nvim'
  Plug 'marko-cerovac/material.nvim'
  Plug 'RRethy/nvim-base16'
  Plug 'Mofiqul/vscode.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
else
  Plug 'tomasr/molokai'
  Plug 'sjl/badwolf'
  Plug 'cocopon/iceberg.vim'
  Plug 'powerline/fonts', { 'do': './install.sh' }
endif
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" airline support
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
  if executable('deno')
    Plug 'vim-denops/denops.vim'
  endif
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
" surround changing things based on syntax, such as ', ", [, ] etc..
Plug 'tpope/vim-surround'
" Pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'
" flexible viewer for any documentation
Plug 'powerman/vim-plugin-viewdoc'
" *****************************************************************************

" ******************************** Fuzzy Finders ******************************
if has('nvim')
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-symbols.nvim'
  Plug 'gbrlsnchs/telescope-lsp-handlers.nvim'
endif
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
  " A light-weight lsp plugin based on neovim built-in lsp with highly a
  " performant UI.
  Plug 'glepnir/lspsaga.nvim'

  if !executable('deno')
    " Dark powered asynchronous completion framework for neovim/Vim8
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/deoplete-zsh', {'for': ['zsh', 'bash', 'shell']}
    Plug 'deoplete-plugins/deoplete-go', {'for': ['go']}
    Plug 'deoplete-plugins/deoplete-cgo', {'for': ['go']}
    Plug 'deoplete-plugins/deoplete-jedi', {'for': ['python']}
    Plug 'deoplete-plugins/deoplete-clang', {'for': ['c', 'c++', 'cpp']}
    Plug 'deoplete-plugins/deoplete-lsp'
    Plug 'deoplete-plugins/deoplete-tag'
  else
    Plug 'Shougo/ddc.vim'
    " Around completion for ddc.vim
    Plug 'Shougo/ddc-around'
    " nvim-lsp completion for ddc.vim
    Plug 'Shougo/ddc-nvim-lsp'
    " Zsh completion for ddc.vim
    "Plug 'Shougo/ddc-zsh'
    " Buffer source for ddc.vim
    Plug 'matsui54/ddc-buffer'
    " ultisnips source for ddc.vim
    Plug 'matsui54/ddc-ultisnips'
    " Heading matcher for ddc.vim
    Plug 'Shougo/ddc-matcher_head'
    " Fuzzy matcher for ddc.vim
    Plug 'matsui54/ddc-matcher_fuzzy'
    " Matched rank order sorter for ddc.vim
    Plug 'Shougo/ddc-sorter_rank'
    " A ddc.vim source for nextword for completing words in English.
    " Plug 'Shougo/ddc-nextword'

  endif
  Plug 'Shougo/neco-vim', {'for': ['vim', 'toml']}
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

" PHP completion, refactoring, introspection tool and language server.
" Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}

" config files
Plug 'cespare/vim-toml', { 'for': ['toml']}

" HTML
" ----
Plug 'mattn/emmet-vim'

" php
" ---
if has('nvim')
  " Plug 'phpactor/phpactor', { 'do': ':call phpactor#Update()'}
endif

" Over 70 language packs
" needed to be set before the plug is loaded
let g:polyglot_disabled = ['vim-go', 'rust.vim'] " disable support for polyglot
Plug 'sheerun/vim-polyglot'
call plug#end()

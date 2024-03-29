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
  " Plug 'mortepau/codicons.nvim'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

  " Plug 'konapun/vacuumline.nvim'
  " Plug 'glepnir/galaxyline.nvim', {'branch': 'main'}

  " A dark neovim colorscheme written in lua
  Plug 'glepnir/zephyr-nvim', { 'branch': 'main' }
else
  Plug 'tomasr/molokai'
  Plug 'sjl/badwolf'
  Plug 'cocopon/iceberg.vim'
endif
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Simple tmux statusline generator with support for powerline symbols and
" statusline / airline / lightline integration
Plug 'edkolev/tmuxline.vim'
Plug 'powerline/fonts', { 'do': './install.sh' }
Plug 'ryanoasis/vim-devicons'
" airline support
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
  " Create your own textobjects using tree-sitter queries!
  Plug 'nvim-treesitter/nvim-treesitter-textobjects'
  " Interactively select and swap function arguments, list elements, and more.
  " Powered by tree-sitter.
  Plug 'mizlan/iswap.nvim'
  " Neovim motions on speed!
  Plug 'phaazon/hop.nvim'
  " The fastest Neovim colorizer
  Plug 'norcalli/nvim-colorizer.lua'
  " Better quickfix window in Neovim, polish old quickfix window.
  Plug 'kevinhwang91/nvim-bqf'
else
  "  A vim plugin to display the indention levels with thin vertical lines
  Plug 'Yggdroot/indentLine'
endif
" Vim undo tree visualizer
Plug 'simnalamburt/vim-mundo'
" vim match-up: even better % navigate and highlight matching words
Plug 'andymass/vim-matchup'
" Comment functions so powerful—no comment necessary.
Plug 'preservim/nerdcommenter'
" surround changing things based on syntax, such as ', ", [, ] etc..
Plug 'tpope/vim-surround'
" Pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'
" Seamless navigation between tmux panes and vim splits
" TODO: make it work
" Plug 'christoomey/vim-tmux-navigator'

" flexible viewer for any documentation
Plug 'powerman/vim-plugin-viewdoc'
" vim-rfc lists all existing RFCs and opens the selected one in a new buffer.
Plug 'mhinz/vim-rfc'
" Vim plugin that provides additional text objects
Plug 'wellle/targets.vim'
" *****************************************************************************

" ******************************** Fuzzy Finders ******************************
if has('nvim')
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-symbols.nvim'
  Plug 'gbrlsnchs/telescope-lsp-handlers.nvim'
  Plug 'fhill2/telescope-ultisnips.nvim'
endif

if executable('fzf')
  " A command-line fuzzy finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
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
  " Provides the missing :LspInstall for nvim-lspconfig
  " Plug 'kabouzeid/nvim-lspinstall'
  Plug 'williamboman/nvim-lsp-installer'
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
  " A tree like view for symbols in Neovim using the Language Server Protocol.
  Plug 'simrat39/symbols-outline.nvim'
  " lsp signature hint when you type
  Plug 'ray-x/lsp_signature.nvim'
  " Plugin that creates missing LSP diagnostics highlight groups for color
  " schemes that don't yet support the Neovim 0.5 builtin LSP client.
  Plug 'folke/lsp-colors.nvim'

  " vscode-like pictograms for neovim lsp completion items
  Plug 'onsails/lspkind-nvim'

  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-emoji'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-nvim-lua'
  Plug 'f3fora/cmp-spell'
  Plug 'quangnguyen30192/cmp-nvim-ultisnips'
  Plug 'Shougo/neco-vim', {'for': ['vim', 'toml']}
  Plug 'lukas-reineke/cmp-rg'
  Plug 'ray-x/cmp-treesitter'
  Plug 'octaltree/cmp-look'
  Plug 'andersevenrud/compe-tmux', { 'branch': 'cmp' }

  " A format runner for neovim, written in lua
  " Plug 'mhartington/formatter.nvim'
endif
"A (Neo)vim plugin for formatting code.
Plug 'sbdchd/neoformat'
Plug 'liuchengxu/vista.vim'
Plug 'ludovicchabant/vim-gutentags'
" Vim script for text filtering and alignment
Plug 'godlygeek/tabular'
" A Vim plugin that provides a completion function for Unicode glyphs
Plug 'chrisbra/unicode.vim'
" *****************************************************************************

" Programming Languages
if executable('go')
  " https://github.com/fatih/vim-go-tutorial
  Plug 'fatih/vim-go', {'do': ':GoInstallBinaries', 'for': [ 'go' ] }
  " Syntax highlight for Versioned Go
  Plug 'zchee/vim-vgo', { 'for': ['go'] }
endif

if executable('python3') || executable('python')
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

" Markup
" ----
Plug 'mattn/emmet-vim'
" A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more (formerly allml)
Plug 'tpope/vim-ragtag'

if has('nvim')
  Plug 'lewis6991/spellsitter.nvim'
endif

" Markdown
" markdown preview plugin for (neo)vim
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" restructuredText
if has('nvim')
  " Sphinx integrations for Neovim.
  Plug 'stsewd/sphinx.nvim', { 'do': ':UpdateRemotePlugins' }
endif

if executable('haproxy')
  Plug 'zimbatm/haproxy.vim'
endif

" Databases/SQL
Plug 'lifepillar/pgsql.vim'

" Over 70 language packs
" needed to be set before the plug is loaded
let g:polyglot_disabled = ['vim-go', 'rust.vim'] " disable support for polyglot
Plug 'sheerun/vim-polyglot'
call plug#end()

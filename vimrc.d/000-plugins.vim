" ==================================================
" vim-plug  setup
" ==================================================
call plug#begin()

" colorscheme
Plug 'tomasr/molokai'
"Plug 'crusoexia/vim-monokai'
Plug 'sjl/badwolf' " TODO: Check and configure it
Plug 'tomasiser/vim-code-dark'

" Over 70 language packs
Plug 'sheerun/vim-polyglot'
" style configuration
Plug 'editorconfig/editorconfig-vim'
" Language Server Protocol (LSP) support for vim and neovim
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" ale - Asynchronous Lint Engine
Plug 'w0rp/ale'
" syntax checking
" Plug 'scrooloose/syntastic'

" VCS (git)
Plug 'tpope/vim-fugitive'
" visualise git
" Plug 'gregsexton/gitv'
" A Vim plugin which shows a git diff in the gutter
Plug 'airblade/vim-gitgutter'
" Mercurial
Plug 'ludovicchabant/vim-lawrencium'
" Fugitive extension to manage and merge Git branches
Plug 'idanarye/vim-merginal'
" A git commit browser
Plug 'junegunn/gv.vim'
" Git branch management
Plug 'sodapopcan/vim-twiggy'

" Comments support
"Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdcommenter'

" Multi-Cursor support
Plug 'terryma/vim-multiple-cursors'

" Execute compiler async
Plug 'tpope/vim-dispatch'
" Interactive command execution in Vim.
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" Test functions from cache
Plug 'MarcWeber/vim-addon-mw-utils'

" tlib dependencies
Plug 'tomtom/tlib_vim'

" better file explorer for vim
Plug 'scrooloose/nerdtree'
" Support git changes for code
Plug 'Xuyuanp/nerdtree-git-plugin'

" Fuzzy file, buffer, mru, tag, etc finder
Plug 'ctrlpvim/ctrlp.vim'
" BufExplorer Plugin for Vim
Plug 'jlanzarotta/bufexplorer'
" A command-line fuzzy finder
Plug 'junegunn/fzf'
" Dark powered asynchronous unite all interfaces for Neovim/Vim8
Plug 'Shougo/denite.nvim'
" Extended f, F, t and T key mappings for Vim
Plug 'rhysd/clever-f.vim'

" Ruby, Rails, Sinatra and bundler
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby', 'haml', 'coffee', 'javascript'] }
Plug 'tpope/vim-bundler', { 'for': ['ruby'] }
" endwith ruby
Plug 'tpope/vim-endwise'
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'haml', 'eruby'] }
" Ruby tests
Plug 'janko-m/vim-test', { 'for': ['ruby', 'haml', 'eruby'] }
" Sinatra
Plug 'hallison/vim-ruby-sinatra', { 'for': ['ruby', 'haml', 'eruby'] }
" ruby refactoring
Plug 'ecomba/vim-ruby-refactoring', { 'for': ['ruby', 'haml', 'eruby'] }
" A custom text object for selecting ruby blocks
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'kana/vim-textobj-user' " requirement by vim-textobj-user


" golang support
" https://github.com/fatih/vim-go-tutorial
Plug 'fatih/vim-go'
" Vim plugin for the godoctor
Plug 'godoctor/godoctor.vim'
" Go Explorer is Vim plugin for exploring Go code
Plug 'garyburd/go-explorer'
if has('nvim')
  " debug using delve
  Plug 'jodosha/vim-godebug'
endif

" pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'
" Every one should have a pair (Autogenerate pairs for "{[( )
Plug 'jiangmiao/auto-pairs'
"The matchit.vim script allows you to configure % to match more than just single characters.
Plug 'vim-scripts/matchit.zip'
" match tag always -> tag xml/html elements starting and ending
Plug 'Valloric/MatchTagAlways'


" airline status plugins
" Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/fonts'
Plug 'edkolev/tmuxline.vim'

" Do completion using tab key
Plug 'ervandew/supertab'

" Tagbar - show tags of a project
Plug 'majutsushi/tagbar'
" javascript tags for tagbar
Plug 'hushicai/tagbar-javascript.vim', { 'do': 'npm install esctags' }

" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" snipMate.vim aims to be a concise vim script that implements some of TextMate's snippets features in Vim.
Plug 'garbas/vim-snipmate'


" Vim plugin: flexible viewer for any documentation
Plug 'powerman/vim-plugin-viewdoc'
" usage of zeal in vim
Plug 'KabbAmine/zeavim.vim'

" support for rust
Plug 'rust-lang/rust.vim'
" rust racer syntax checking
Plug 'racer-rust/vim-racer'

" visual undo graph
Plug 'mbbill/undotree'

" surrond changing things based on syntax, such as ', ", [, ] etc..
Plug 'tpope/vim-surround'

" repeat.vim: enable repeating supported plugin maps with '.'
Plug 'tpope/vim-repeat'
" abolish.vim: easily search for, substitute, and abbreviate multiple variants of a word
Plug 'tpope/vim-abolish'

" Web API
Plug 'mattn/webapi-vim'

if !has('nvim')
  " new complete library
  Plug 'lifepillar/vim-mucomplete'
else
  " Dark powered asynchronous completion framework for neovim
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  " Go complete
  Plug 'zchee/deoplete-go', { 'do': 'make'}
  " python complete
  Plug 'zchee/deoplete-jedi'
  " javascript complete
  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install' }
  " Deoplete sources for ruby language
  Plug 'fishbullet/deoplete-ruby'
  " deoplete rcodetools source for Ruby
  Plug 'Shougo/deoplete-rct'
  " A neocomplcache plugin for English, using look command
  Plug 'ujihisa/neco-look'
  " better spirce scanning
  Plug 'Shougo/neco-syntax'
  " vim syntax complete
  Plug 'Shougo/neco-vim'
  " deoplete.nvim source for C/C++/Obj-C/Obj-C++ with clang-python3
  Plug 'zchee/deoplete-clang'
  " Zsh completion for deoplete.nvim
  Plug 'zchee/deoplete-zsh'
  " Deoplete source for emoji codes
  Plug 'fszymanski/deoplete-emoji'
endif
" Update the bult-in CSS complete function to latest CSS standard
Plug 'othree/csscomplete.vim'

" ---------------
" Web Development
" ---------------
" Helps editing xml and (x)html files
Plug 'othree/xml.vim'
" HTML abbrivation tool
Plug 'mattn/emmet-vim', { 'for': ['html', 'xhtml', 'css', 'xml', 'erb'] }
" support for vue.js
Plug 'posva/vim-vue'
" YAJS.vim: Yet Another JavaScript Syntax for Vim
Plug 'othree/yajs.vim'
" vim-jsx
Plug 'mxw/vim-jsx', { 'for': 'javascript.jsx' }
" Syntax for JavaScript libraries
Plug 'othree/javascript-libraries-syntax.vim'
" ES.Next syntax for Vim - This syntax file is for ES7 and future syntax
Plug 'othree/es.next.syntax.vim'
" Enhanced javascript syntax file for Vim
Plug 'jelera/vim-javascript-syntax'
" Tern plugin for Vim
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
" Css Coloring
Plug 'ap/vim-css-color'
" A better JSON for Vim: distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing. Pathogen-friendly.
Plug 'elzr/vim-json'
" Standalone JSDoc syntax for vim
Plug 'othree/jsdoc-syntax.vim'
" Wrapper around babel.js (ES2015, React, ...)  Wrapper around babel.js (ES2015, React, ...)
Plug 'jbgutierrez/vim-babel'
" Vastly improved Javascript indentation and syntax support in Vim.
Plug 'pangloss/vim-javascript'
" React JSX syntax pretty highlighting for vim.
Plug 'maxmellon/vim-jsx-pretty'
" Next generation JavaScript and React snippets for Vim
Plug 'alnjxn/babel-vim-snippets'
" vim snippets for react.
Plug 'BerkeleyTrue/berkeleys-snippet-emporium'
" auto fix your javascript using fixmyjs
Plug 'ruanyl/vim-fixmyjs'
" CSS3 syntax (and syntax defined in some foreign specifications) support for Vim's built-in syntax/css.vim
Plug 'hail2u/vim-css3-syntax'
" Vim syntax file for scss (Sassy CSS)
Plug 'cakebaker/scss-syntax.vim'
" vim syntax for LESS (dynamic CSS)
Plug 'groenewege/vim-less'
" List of JavaScript ES6 snippets and syntax highlighting for vim
Plug 'isRuslan/vim-es6'
"A vim plugin that wraps `jscs -x` into a `:Format` command
Plug 'mklabs/jscs.vim', { 'do': 'npm i jscs -g'  }
"  HTML5 omnicomplete and syntax
Plug 'othree/html5.vim'
" JavaScript Parameter Complete
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
" ----------------------
" End of Web Development
" ----------------------

" A vim plugin that simplifies the transition between multiline and single-line code
Plug 'AndrewRadev/splitjoin.vim'

" ASCII drawing plugin: lines, ellipses, arrows, fills, and more!
Plug 'vim-scripts/DrawIt'

" An aggregated list for TODO, FIXME and XXX
Plug 'vim-scripts/TaskList.vim'

" Vim script for text filtering and alignment
Plug 'godlygeek/tabular'

" Drawing tables usin VIM
Plug 'dhruvasagar/vim-table-mode'

" eunuch.vim: helpers for UNIX
Plug 'tpope/vim-eunuch'

" Handles bracketed-paste-mode in vim (aka. automatic `:set paste`)
Plug 'ConradIrwin/vim-bracketed-paste'

" Use of Clang for completing C, C++, Objective-C and Objective-C++
Plug 'Rip-Rip/clang_complete', { 'for': ['c', 'cpp'] }

" Support for python programming
Plug 'python-mode/python-mode'
" Using the jedi autocompletion library for VIM for Python
Plug 'davidhalter/jedi-vim'
" Vim plugin for working with python virtualenvs
Plug 'jmcantrell/vim-virtualenv'

" HasiCorp
Plug 'hashivim/vim-terraform'
" Terraform complete
Plug 'juliosueiras/vim-terraform-completion'

" GraphQL
Plug 'jparise/vim-graphql'

"  A vim plugin to display the indention levels with thin vertical lines
Plug 'Yggdroot/indentLine'

" async formatting for neovim and vim8
Plug 'sbdchd/neoformat'

" vim plugin for highlighting columns in csv/tsv files and executing SELECT and UPDATE queries in SQL-like language
Plug 'mechatroner/rainbow_csv'

"Elm
Plug 'ElmCast/elm-vim', { 'for': ['elm'] }

" vim kotlin
Plug 'udalov/kotlin-vim'

" Make the yanked region apparent!
Plug 'machakann/vim-highlightedyank'
" Semantic Highlighting for Vim
Plug 'jaxbot/semantic-highlight.vim'

call plug#end()

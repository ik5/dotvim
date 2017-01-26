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

" tlib dependencies
Plug 'tomtom/tlib_vim'

" better file explorer for vim
Plug 'scrooloose/nerdtree'

" Fuzzy file, buffer, mru, tag, etc finder
Plug 'ctrlpvim/ctrlp.vim'
" BufExplorer Plugin for Vim
Plug 'jlanzarotta/bufexplorer'

" Ruby, Rails, Sinatra and bundler
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
" endwith ruby
Plug 'tpope/vim-endwise'
Plug 'vim-ruby/vim-ruby'
" Ruby tests
Plug 'janko-m/vim-test'
" Sinatra
Plug 'hallison/vim-ruby-sinatra'

" golang support
" https://github.com/fatih/vim-go-tutorial
Plug 'fatih/vim-go'
" Go Explorer is Vim plugin for exploring Go code
Plug 'garyburd/go-explorer'

" pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'
" Every one should have a pair (Autogenerate pairs for "{[( )
Plug 'jiangmiao/auto-pairs'
"The matchit.vim script allows you to configure % to match more than just single characters.
Plug 'vim-scripts/matchit.zip'

" airline status plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/fonts'

" Do completion using tab key
Plug 'ervandew/supertab'

" Tagbar - show tags of a project
Plug 'majutsushi/tagbar'

" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" snipMate.vim aims to be a concise vim script that implements some of TextMate's snippets features in Vim.
Plug 'garbas/vim-snipmate'

" Vim plugin: flexible viewer for any documentation
Plug 'powerman/vim-plugin-viewdoc'

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

" Web API
Plug 'mattn/webapi-vim'

" new complete library
Plug 'lifepillar/vim-mucomplete'

" Helps editing xml and (x)html files
Plug 'othree/xml.vim'
" HTML abbrivation tool
Plug 'mattn/emmet-vim', { 'for': ['html', 'xhtml', 'css', 'xml', 'erb'] }
" support for vue.js
Plug 'posva/vim-vue'
" vim-jsx
Plug 'mxw/vim-jsx'
" Syntax for JavaScript libraries
Plug 'othree/javascript-libraries-syntax.vim'
" ES.Next syntax for Vim - This syntax file is for ES7 and future syntax
Plug 'othree/es.next.syntax.vim'
" Enhanced javascript syntax file for Vim
Plug 'jelera/vim-javascript-syntax'


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

" Tern plugin for Vim
Plug 'ternjs/tern_for_vim'

" eunuch.vim: helpers for UNIX
Plug 'tpope/vim-eunuch'

" Handles bracketed-paste-mode in vim (aka. automatic `:set paste`)
Plug 'ConradIrwin/vim-bracketed-paste'

" Lightning fast left-right movement in Vim
Plug 'unblevable/quick-scope'

" Css Coloring
Plug 'ap/vim-css-color'

" Use of Clang for completing C, C++, Objective-C and Objective-C++
Plug 'Rip-Rip/clang_complete', { 'for': ['c', 'cpp'] }

" Support for python programming
Plug 'python-mode/python-mode'

call plug#end()

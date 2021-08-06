" ==================================================
" vim-plug  setup
" ==================================================
if has('nvim')
  call plug#begin('~/.config/nvim/plugged')
else
  call plug#begin('~/.vim/plugged')
endif

" colors, visual display etc...
" colorscheme
Plug 'tomasr/molokai'
Plug 'sjl/badwolf'
" Adaptation of one-light and one-dark colorschemes for Vim
Plug 'rakr/vim-one'
Plug 'tomasiser/vim-code-dark'
" base16 colorschemes
Plug 'chriskempson/base16-vim'
" Adds file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline, Powerline, Unite, vim-startify and more
" Plug 'ryanoasis/vim-devicons'
" Extra NERDTree Icons
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" airline support
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'powerline/fonts', { 'do': './install.sh' }
" Simple tmux statusline generator with support for powerline symbols and statusline / airline / lightline integration
Plug 'edkolev/tmuxline.vim'
" Make the yanked region apparent!
Plug 'machakann/vim-highlightedyank'
" Semantic Highlighting for Vim
Plug 'jaxbot/semantic-highlight.vim'
" Retro groove color scheme for Vim
Plug 'morhetz/gruvbox'

" linting
Plug 'dense-analysis/ale'

" Dark powered asynchronous unite all interfaces for Neovim/Vim8
Plug 'Shougo/denite.nvim'
" denite-rails is a Denite.nvim source for Rails
" Plug '5t111111/denite-rails', { 'for': ['ruby', 'haml', 'eruby'] }
" Control your location list and quickfix list by unite/denite
Plug 'chemzqm/unite-location'
" Vim plugin: Create your own text objects - dependency for other plugins
Plug 'kana/vim-textobj-user'
" Text objects for dealing with URIs
Plug 'jceb/vim-textobj-uri'
" endwith ruby and other languages
Plug 'tpope/vim-endwise'
" surrond changing things based on syntax, such as ', ", [, ] etc..
Plug 'tpope/vim-surround'
" Vim plugin that provides additional text objects
Plug 'wellle/targets.vim'
" repeat.vim: enable repeating supported plugin maps with '.'
Plug 'tpope/vim-repeat'
" abolish.vim: easily search for, substitute, and abbreviate multiple variants of a word
Plug 'tpope/vim-abolish'
" Find And Replace Vim plugin
Plug 'brooth/far.vim'
" Vim plugin to diff two directories
Plug 'will133/vim-dirdiff'
" visual undo graph
Plug 'mbbill/undotree'
" EditorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'

" auto complete
if executable('look')
  " better spirce scanning
  Plug 'Shougo/neco-syntax'
  " vim syntax complete
  Plug 'Shougo/neco-vim', { 'for': ['vim'] }
  Plug 'ujihisa/neco-look'
endif
if executable('tmux')
  " Vim plugin for insert mode completion of words in adjacent tmux panes
  Plug 'wellle/tmux-complete.vim'
endif
" Update the bult-in CSS complete function to latest CSS standard
Plug 'othree/csscomplete.vim', { 'for': ['css']  }
" Track the engine.
Plug 'SirVer/ultisnips'
" neo-snippet plugin
Plug 'Shougo/neosnippet.vim'
" The standard snippets repository for neosnippet
Plug 'Shougo/neosnippet-snippets'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" snipMate.vim aims to be a concise vim script that implements some of TextMate's snippets features in Vim.
Plug 'garbas/vim-snipmate'
" Some snippets of vim' plugin snipMate.vim for ruby
" Plug 'kaichen/vim-snipmate-ruby-snippets'
" Intellisense engine for vim8 & neovim, full language server protocol support as VSCode
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install()}}
" Denite support of coc.nvim
Plug 'neoclide/coc-denite'
if filereadable('/bin/zsh')
  " coc.nvim source for Zsh completions
  Plug 'tjdevries/coc-zsh'
endif

" VCS (git)
Plug 'tpope/vim-fugitive'
" A Vim plugin which shows a git diff in the gutter
" A lightweight and powerful git branch viewer for vim.
Plug 'rbong/vim-flog'
" A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
Plug 'airblade/vim-gitgutter'
" Mercurial
Plug 'ludovicchabant/vim-lawrencium'
" A git commit browser
Plug 'junegunn/gv.vim'
" Git branch management
Plug 'sodapopcan/vim-twiggy'
" GitHub extension for fugitive.vim
Plug 'tpope/vim-rhubarb'
" Easy git merge conflict resolution in Vim
Plug 'christoomey/vim-conflicted'

Plug 'scrooloose/nerdcommenter'

" Test functions from cache
Plug 'MarcWeber/vim-addon-mw-utils'
" tlib dependencies
Plug 'tomtom/tlib_vim'

" better file explorer for vim
Plug 'scrooloose/nerdtree'
" Support git changes for code
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'jlanzarotta/bufexplorer'
" Extended f, F, t and T key mappings for Vim
Plug 'rhysd/clever-f.vim'

" if executable('ruby')
"   " Ruby, Rails, Sinatra and bundler
"   Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby', 'haml', 'coffee', 'javascript'] }
"   Plug 'tpope/vim-bundler', { 'for': ['ruby'] }
"   Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'haml', 'eruby'] }
"   " Ruby tests
"   Plug 'janko-m/vim-test', { 'for': ['ruby', 'haml', 'eruby'] }
"   " Sinatra
"   Plug 'hallison/vim-ruby-sinatra', { 'for': ['ruby', 'haml', 'eruby'] }
"   " ruby refactoring
"   Plug 'ecomba/vim-ruby-refactoring', { 'for': ['ruby', 'haml', 'eruby'] }
"   " A custom text object for selecting ruby blocks
"   Plug 'nelstrom/vim-textobj-rubyblock', { 'for': ['ruby', 'haml', 'eruby'] } " requirement by vim-textobj-user
"   " it's like rails.vim without the rails
"   Plug 'tpope/vim-rake', { 'for': ['ruby', 'haml', 'eruby'] }
"   " Switch Ruby versions from inside Vim
"   Plug 'tpope/vim-rvm', { 'for': ['ruby', 'haml', 'eruby'] }
"   " Minimal rbenv support
"   Plug 'tpope/vim-rbenv', { 'for': ['ruby', 'haml', 'eruby'] }
"   " Automatically generate ctags for rbenv Ruby stdlibs
"   Plug 'tpope/rbenv-ctags', { 'for': ['ruby', 'haml', 'eruby'] }
"   " Vim highlighting & completion for MiniTest
"   Plug 'sunaku/vim-ruby-minitest', { 'for': ['ruby', 'haml', 'eruby'] }
"   " Vim plugin for ruby editing. Quick jump to method, class, module defenitions in buffers
"   Plug 'xmisao/rubyjump.vim', { 'for': ['ruby', 'haml', 'eruby'] }
"   " Highlight local variables in Ruby files
"   Plug 'todesking/ruby_hl_lvar.vim', { 'for': ['ruby', 'haml', 'eruby'] }
"   " enables syntax highlighting in Ruby here document code blocks
"   Plug 'joker1007/vim-ruby-heredoc-syntax', { 'for': ['ruby', 'haml', 'eruby'] }
" endif

if executable('go')
  " golang support
  " https://github.com/fatih/vim-go-tutorial
  Plug 'fatih/vim-go', {'do': ':GoInstallBinaries', 'for': [ 'go' ] }
  " Syntax highlight for Versioned Go
  Plug 'zchee/vim-vgo', { 'for': ['go'] }
endif

" pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'
" Every one should have a pair (Autogenerate pairs for "{[( )
Plug 'jiangmiao/auto-pairs'
" vim match-up: even better % 👊 navigate and highlight matching words
Plug 'andymass/vim-matchup'

" Tagbar - show tags of a project
Plug 'majutsushi/tagbar'


" Vim plugin: flexible viewer for any documentation
Plug 'powerman/vim-plugin-viewdoc'
if executable('zeal')
  " usage of zeal in vim
  Plug 'KabbAmine/zeavim.vim'
endif
if filereadable('/Applications/Dash.app/Contents/MacOS/Dash')
  Plug 'rizzatti/dash.vim'
endif

" if executable('rustc')
"   " support for rust
"   Plug 'rust-lang/rust.vim', { 'for': ['rust', 'rs', 'rslib'] }
"   " rust racer syntax checking
"   Plug 'racer-rust/vim-racer', { 'for': ['rust', 'rs', 'rslib'] }
" endif

" ---------------
" Web Development
" ---------------
" Helps editing xml and (x)html files
Plug 'othree/xml.vim', {'for': ['xhtml', 'xml']}
" HTML abbrivation tool
Plug 'mattn/emmet-vim', { 'for': ['html', 'xhtml', 'css', 'xml', 'erb'] }
" support for vue.js
Plug 'posva/vim-vue', { 'for': ['vue', 'javascript'] }
" Tern plugin for Vim
Plug 'ternjs/tern_for_vim', { 'do': 'npm install', 'for': ['javascript', 'vue', 'jsx', 'javascript.jsx'] }
"  A Vim plugin to colorize all text in the form #rrggbb or #rgb
Plug 'lilydjwg/colorizer'
" A better JSON for Vim: distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing. Pathogen-friendly.
Plug 'elzr/vim-json', { 'for': ['json', 'javascript'] }
" Standalone JSDoc syntax for vim
Plug 'othree/jsdoc-syntax.vim', { 'for': ['javascript'] }
" Generate JSDoc commands based on function signature
Plug 'heavenshell/vim-jsdoc'
" Wrapper around babel.js (ES2015, React, ...)  Wrapper around babel.js (ES2015, React, ...)
Plug 'jbgutierrez/vim-babel', { 'for': ['javascript'] }
" Next generation JavaScript and React snippets for Vim
Plug 'alnjxn/babel-vim-snippets', { 'for': ['javascript'] }
" vim snippets for react.
Plug 'BerkeleyTrue/berkeleys-snippet-emporium', { 'for': ['javascript', 'jsx', 'javascript.jsx'] }
" List of JavaScript ES6 snippets and syntax highlighting for vim
Plug 'isRuslan/vim-es6', { 'for': ['javascript', 'jsx', 'javascript.jsx', 'vue'] }
"A vim plugin that wraps `jscs -x` into a `:Format` command
Plug 'mklabs/jscs.vim', { 'do': 'npm i jscs -g', 'for': ['javascript', 'jsx', 'javascript.jsx', 'vue']  }
"  HTML5 omnicomplete and syntax
Plug 'othree/html5.vim', { 'for': ['html', 'xhtml', 'erb'] }
" Improved nginx vim plugin (incl. syntax highlighting)
Plug 'chr4/nginx', { 'for': ['nginx'] }
" Highlights JavaScript/TypeScript tagged Template Strings with custom syntaxes
Plug 'cdata/vim-tagged-template'
" ----------------------
" End of Web Development
" ----------------------

" A vim plugin that simplifies the transition between multiline and single-line code
Plug 'AndrewRadev/splitjoin.vim'

" ASCII drawing plugin: lines, ellipses, arrows, fills, and more!
Plug 'vim-scripts/DrawIt'
" Drawing tables usin VIM
Plug 'dhruvasagar/vim-table-mode'


" todo-vim is plugin for manage your todo notes
Plug 'vim-scripts/todo-vim'

" Vim script for text filtering and alignment
Plug 'godlygeek/tabular'

" eunuch.vim: helpers for UNIX
Plug 'tpope/vim-eunuch'

" Handles bracketed-paste-mode in vim (aka. automatic `:set paste`)
Plug 'ConradIrwin/vim-bracketed-paste'

if executable('llc') || executable('clang')
  " Include source for coc.nvim
  Plug 'jsfaint/coc-neoinclude', { 'for': ['c', 'cpp'] }
  " Include completion framework for neocomplete/deoplete
  Plug 'Shougo/neoinclude.vim', { 'for': ['c', 'cpp'] }
endif

if executable('python')
  " Support for python programming
  Plug 'python-mode/python-mode', { 'for': 'python' }
  " Using the jedi autocompletion library for VIM for Python
  Plug 'davidhalter/jedi-vim', { 'for': 'python' }
  " Vim plugin for working with python virtualenvs
  Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }
endif

" if executable('terraform')
"   " HasiCorp
"   Plug 'hashivim/vim-terraform', { 'for': ['tf', 'terraform'] }
"   " Terraform complete
"   Plug 'juliosueiras/vim-terraform-completion', { 'for': ['tf', 'terraform'] }
" endif

" GraphQL
Plug 'jparise/vim-graphql', { 'for': ['gql', 'graphql','javascript', 'javascript.jsx', 'vue', 'jsx' ] }

"  A vim plugin to display the indention levels with thin vertical lines
Plug 'Yggdroot/indentLine'

" Databases
" vim plugin for highlighting columns in csv/tsv files and executing SELECT and UPDATE queries in SQL-like language
Plug 'mechatroner/rainbow_csv', { 'for': ['csv'] }
" The best PostgreSQL plugin for Vim!
Plug 'lifepillar/pgsql.vim', { 'for': ['sql'] }
" Modern database interface for Vim
" Plug 'tpope/vim-dadbod'
" Provides database access to many dbms (Oracle, Sybase, Microsoft, MySQL, DBI,..)
" Plug 'vim-scripts/dbext.vim'

" if filereadable('elm')
"   "Elm
"   Plug 'ElmCast/elm-vim', { 'for': ['elm'] }
" endif

" if filereadable('kotlin')
"   " vim kotlin
"   Plug 'udalov/kotlin-vim', { 'for': ['kotlin', 'kts', 'kt'] }
" endif

if executable('perl')
  " ALE perl syntax checker
  Plug 'skaji/syntax-check-perl'
endif

if executable('php')
  "  An up-to-date Vim syntax for PHP (7.x supported)
  Plug 'stanangeloff/php.vim'
  " Improved PHP omnicompletion
  Plug 'shawncplus/phpcomplete.vim'
endif

if executable('dotnet')
  " Vim omnicompletion (intellisense) and more for C#
  Plug 'OmniSharp/omnisharp-vim'
endif

" A powerful grammar checker for Vim using LanguageTool
Plug 'rhysd/vim-grammarous'
" A Vim plugin for looking up words in an online thesaurus
Plug 'beloglazov/vim-online-thesaurus'

" Vim Markdown runtime files
Plug 'tpope/vim-markdown', { 'for': ['markdown', 'md'] }

" Convert given timestamp to local date time and utc
" Plug 'heavenshell/vim-jikoku'

" if executable("mvn")
"   Plug 'mikelue/vim-maven-plugin', { 'for': ['java'] }
" endif

" A Vim plugin to make it easy to read pcap dumps
Plug 'bps/vim-tshark'

" Over 70 language packs
" needed to be set before the plug is loaded
let g:polyglot_disabled = ['elm-vim', 'vim-go'] " disable support for polyglot
Plug 'sheerun/vim-polyglot'
call plug#end()

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
"Plug 'crusoexia/vim-monokai'
Plug 'sjl/badwolf'
" Adaptation of one-light and one-dark colorschemes for Vim
Plug 'rakr/vim-one'
Plug 'tomasiser/vim-code-dark'
" base16 colorschemes
Plug 'chriskempson/base16-vim'
" Adds file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline, Powerline, Unite, vim-startify and more
Plug 'ryanoasis/vim-devicons'
" Extra NERDTree Icons
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" airline support
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/fonts', { 'do': './install.sh' }
" Simple tmux statusline generator with support for powerline symbols and statusline / airline / lightline integration
Plug 'edkolev/tmuxline.vim'
" Make the yanked region apparent!
Plug 'machakann/vim-highlightedyank'
" Semantic Highlighting for Vim
Plug 'jaxbot/semantic-highlight.vim'
" Retro groove color scheme for Vim
Plug 'morhetz/gruvbox'

" Language Server Protocol (LSP) support for vim and neovim
Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \ }

" Vim plugin to diff two directories
Plug 'will133/vim-dirdiff'
" visual undo graph
Plug 'mbbill/undotree'


" ale - Asynchronous Lint Engine
Plug 'w0rp/ale'

" Dark powered asynchronous unite all interfaces for Neovim/Vim8
Plug 'Shougo/denite.nvim'
" Browse and open sessions with this Denite source
Plug 'rafi/vim-denite-session'
" denite-rails is a Denite.nvim source for Rails
Plug '5t111111/denite-rails', { 'for': ['ruby', 'haml', 'eruby'] }
" Control your location list and quickfix list by unite/denite
Plug 'chemzqm/unite-location'
" Vim plugin: Create your own text objects - dependency for other plugins
Plug 'kana/vim-textobj-user'
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

" auto complete
" Dark powered asynchronous completion framework for neovim
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
if executable('go')
  " Go complete
  Plug 'zchee/deoplete-go', { 'do': 'make', 'for': [ 'go' ] }
endif
if executable("python")
  " python complete
  Plug 'zchee/deoplete-jedi', { 'for': 'python' }
  if executable("npm")
    "" javascript complete
    Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install', 'for': ['javascript', 'vue', 'jsx'] }
  endif
endif
if executable("ruby")
  " Deoplete sources for ruby language
  Plug 'fishbullet/deoplete-ruby', { 'for': ['ruby', 'haml', 'eruby'] }
  " deoplete source for Ruby with solargraph -> IDE tools for Ruby
  " Plug 'uplus/deoplete-solargraph', { 'for': ['ruby', 'haml', 'eruby']  }
  " A neocomplcache plugin for English, using look command
endif
Plug 'ujihisa/neco-look'
" better spirce scanning
Plug 'Shougo/neco-syntax'
" vim syntax complete
Plug 'Shougo/neco-vim', { 'for': ['vim'] }
" deoplete.nvim source for C/C++/Obj-C/Obj-C++ with clang-python3
Plug 'zchee/deoplete-clang', { 'for': ['c', 'cpp'] }
" Zsh completion for deoplete.nvim
Plug 'zchee/deoplete-zsh', { 'for': ['zsh'] }
" Deoplete source for emoji codes
Plug 'fszymanski/deoplete-emoji'
" Neovim and vim Flow autocompletion for deoplete + neosnippet
Plug 'wokalski/autocomplete-flow', { 'do': 'npm i flow-bin', 'for': ['javascript', 'jsx', 'vue']  }
" Vim plugin for insert mode completion of words in adjacent tmux panes
Plug 'wellle/tmux-complete.vim'
if executable('rustc')
  " Rust completion for Neovim (Deoplete) via Racer
  Plug 'sebastianmarkow/deoplete-rust', { 'for': ['rust', 'rs', 'rslib'] }
endif
" Update the bult-in CSS complete function to latest CSS standard
Plug 'othree/csscomplete.vim', { 'for': ['css']  }

" async formatting for neovim and vim8
Plug 'sbdchd/neoformat'

" VCS (git)
Plug 'tpope/vim-fugitive'
" visualise git
" Plug 'gregsexton/gitv'
" A Vim plugin which shows a git diff in the gutter
" A lightweight and powerful git branch viewer for vim.
Plug 'rbong/vim-flog'
"
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

" Comments support
"Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdcommenter'

" Test functions from cache
Plug 'MarcWeber/vim-addon-mw-utils'
" tlib dependencies
" Plug 'tomtom/tlib_vim'

" better file explorer for vim
Plug 'scrooloose/nerdtree'
" Support git changes for code
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'jlanzarotta/bufexplorer'
" Extended f, F, t and T key mappings for Vim
Plug 'rhysd/clever-f.vim'
" An ack.vim alternative mimics Ctrl-Shift-F on Sublime Text 2
" Plug 'dyng/ctrlsf.vim'

if executable('ruby')
  " Ruby, Rails, Sinatra and bundler
  Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby', 'haml', 'coffee', 'javascript'] }
  Plug 'tpope/vim-bundler', { 'for': ['ruby'] }
  Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'haml', 'eruby'] }
  " Ruby tests
  Plug 'janko-m/vim-test', { 'for': ['ruby', 'haml', 'eruby'] }
  " Sinatra
  Plug 'hallison/vim-ruby-sinatra', { 'for': ['ruby', 'haml', 'eruby'] }
  " ruby refactoring
  Plug 'ecomba/vim-ruby-refactoring', { 'for': ['ruby', 'haml', 'eruby'] }
  " A custom text object for selecting ruby blocks
  Plug 'nelstrom/vim-textobj-rubyblock', { 'for': ['ruby', 'haml', 'eruby'] } " requirement by vim-textobj-user
  " it's like rails.vim without the rails
  Plug 'tpope/vim-rake', { 'for': ['ruby', 'haml', 'eruby'] }
  " Switch Ruby versions from inside Vim
  Plug 'tpope/vim-rvm', { 'for': ['ruby', 'haml', 'eruby'] }
  " Minimal rbenv support
  Plug 'tpope/vim-rbenv', { 'for': ['ruby', 'haml', 'eruby'] }
  " Automatically generate ctags for rbenv Ruby stdlibs
  Plug 'tpope/rbenv-ctags', { 'for': ['ruby', 'haml', 'eruby'] }
  " Vim highlighting & completion for MiniTest
  Plug 'sunaku/vim-ruby-minitest', { 'for': ['ruby', 'haml', 'eruby'] }
  " Vim plugin for ruby editing. Quick jump to method, class, module defenitions in buffers
  Plug 'xmisao/rubyjump.vim', { 'for': ['ruby', 'haml', 'eruby'] }
  " Vim Flog Plugin
  " Plug 'sentientmonkey/vim-flog', { 'for': ['ruby', 'haml', 'eruby'] }
  " Highlight local variables in Ruby files
  Plug 'todesking/ruby_hl_lvar.vim', { 'for': ['ruby', 'haml', 'eruby'] }
  " enables syntax highlighting in Ruby here document code blocks
  Plug 'joker1007/vim-ruby-heredoc-syntax', { 'for': ['ruby', 'haml', 'eruby'] }
endif

if executable('go')
  " golang support
  " https://github.com/fatih/vim-go-tutorial
  Plug 'fatih/vim-go', {'do': ':GoInstallBinaries', 'for': [ 'go' ] }
  " Vim plugin for the godoctor
  " Plug 'godoctor/godoctor.vim', { 'for': ['go'] }
  " Syntax highlight for Versioned Go
  Plug 'zchee/vim-vgo', { 'for': ['go'] }
endif

" pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'
" Every one should have a pair (Autogenerate pairs for "{[( )
Plug 'jiangmiao/auto-pairs'
" vim match-up: even better % 👊 navigate and highlight matching words
Plug 'andymass/vim-matchup'

" airline status plugins" Do completion using tab key
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
" Some snippets of vim' plugin snipMate.vim for ruby
Plug 'kaichen/vim-snipmate-ruby-snippets'

" Vim plugin: flexible viewer for any documentation
Plug 'powerman/vim-plugin-viewdoc'
if executable('zeal')
  " usage of zeal in vim
  Plug 'KabbAmine/zeavim.vim'
endif
if filereadable('/Applications/Dash.app/Contents/MacOS/Dash')
  Plug 'rizzatti/dash.vim'
endif
" Displays function signatures from completions in the command line
Plug 'Shougo/echodoc.vim'

if executable('rustc')
  " support for rust
  Plug 'rust-lang/rust.vim', { 'for': ['rust', 'rs', 'rslib'] }
  " rust racer syntax checking
  Plug 'racer-rust/vim-racer', { 'for': ['rust', 'rs', 'rslib'] }
endif


" Web API
Plug 'mattn/webapi-vim'


" ---------------
" Web Development
" ---------------
" Helps editing xml and (x)html files
Plug 'othree/xml.vim', {'for': ['xhtml', 'xml']}
" HTML abbrivation tool
Plug 'mattn/emmet-vim', { 'for': ['html', 'xhtml', 'css', 'xml', 'erb'] }
" support for vue.js
Plug 'posva/vim-vue', { 'for': ['vue', 'javascript'] }
" YAJS.vim: Yet Another JavaScript Syntax for Vim
Plug 'othree/yajs.vim', { 'for': ['vue', 'javascript', 'jsx', 'javascript.jsx'] }
" vim-jsx
Plug 'mxw/vim-jsx', { 'for': 'javascript.jsx' }
" Syntax for JavaScript libraries
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'vue', 'jsx', 'javascript.jsx'] }
" ES.Next syntax for Vim - This syntax file is for ES7 and future syntax
Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'vue', 'jsx', 'javascript.jsx'] }
" Enhanced javascript syntax file for Vim
Plug 'jelera/vim-javascript-syntax', { 'for': ['javascript', 'vue', 'jsx', 'javascript.jsx'] }
" Tern plugin for Vim
Plug 'ternjs/tern_for_vim', { 'do': 'npm install', 'for': ['javascript', 'vue', 'jsx', 'javascript.jsx'] }
" Css Coloring
" Plug 'ap/vim-css-color', { 'for': ['html', 'xhtml', 'xml', 'css', 'sass', 'scss', 'less']  }
"  A Vim plugin to colorize all text in the form #rrggbb or #rgb
Plug 'lilydjwg/colorizer'
" A better JSON for Vim: distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing. Pathogen-friendly.
Plug 'elzr/vim-json', { 'for': ['json', 'javascript'] }
" Standalone JSDoc syntax for vim
Plug 'othree/jsdoc-syntax.vim', { 'for': ['javascript'] }
" Wrapper around babel.js (ES2015, React, ...)  Wrapper around babel.js (ES2015, React, ...)
Plug 'jbgutierrez/vim-babel', { 'for': ['javascript'] }
" Vastly improved Javascript indentation and syntax support in Vim.
Plug 'pangloss/vim-javascript',{ 'for': ['javascript', 'vue', 'jsx', 'javascript.jsx'] }
" React JSX syntax pretty highlighting for vim.
Plug 'maxmellon/vim-jsx-pretty', { 'for': ['javascript', 'vue', 'jsx', 'javascript.jsx'] }
" Next generation JavaScript and React snippets for Vim
Plug 'alnjxn/babel-vim-snippets', { 'for': ['javascript'] }
" vim snippets for react.
Plug 'BerkeleyTrue/berkeleys-snippet-emporium', { 'for': ['javascript', 'jsx', 'javascript.jsx'] }
" auto fix your javascript using fixmyjs
Plug 'ruanyl/vim-fixmyjs', { 'for': ['javascript', 'jsx', 'javascript.jsx', 'vue'] }
" CSS3 syntax (and syntax defined in some foreign specifications) support for Vim's built-in syntax/css.vim
Plug 'hail2u/vim-css3-syntax', { 'for': ['css']}
" Vim syntax file for scss (Sassy CSS)
Plug 'cakebaker/scss-syntax.vim', { 'for': ['sass', 'scss'] }
" vim syntax for LESS (dynamic CSS)
Plug 'groenewege/vim-less', { 'for': ['less'] }
" List of JavaScript ES6 snippets and syntax highlighting for vim
Plug 'isRuslan/vim-es6', { 'for': ['javascript', 'jsx', 'javascript.jsx', 'vue'] }
"A vim plugin that wraps `jscs -x` into a `:Format` command
Plug 'mklabs/jscs.vim', { 'do': 'npm i jscs -g', 'for': ['javascript', 'jsx', 'javascript.jsx', 'vue']  }
"  HTML5 omnicomplete and syntax
Plug 'othree/html5.vim', { 'for': ['html', 'xhtml'] }
" JavaScript Parameter Complete
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx', 'vue', 'jsx'] }
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

" An aggregated list for TODO, FIXME and XXX
" Plug 'vim-scripts/TaskList.vim'
" todo-vim is plugin for manage your todo notes
Plug 'vim-scripts/todo-vim'

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
Plug 'python-mode/python-mode', { 'for': 'python' }
" Using the jedi autocompletion library for VIM for Python
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
" Vim plugin for working with python virtualenvs
Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }

if executable('terraform')
  " HasiCorp
  Plug 'hashivim/vim-terraform', { 'for': ['tf', 'terraform'] }
  " Terraform complete
  Plug 'juliosueiras/vim-terraform-completion', { 'for': ['tf', 'terraform'] }
endif

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
Plug 'tpope/vim-dadbod'

if filereadable('elm')
  "Elm
  Plug 'ElmCast/elm-vim', { 'for': ['elm'] }
endif

if filereadable('kotlin')
  " vim kotlin
  Plug 'udalov/kotlin-vim', { 'for': ['kotlin', 'kts', 'kt'] }
endif

if executable('perl')
  " ALE perl syntax checker
  Plug 'skaji/syntax-check-perl'
endif

" A powerful grammar checker for Vim using LanguageTool
Plug 'rhysd/vim-grammarous'
" A Vim plugin for looking up words in an online thesaurus
Plug 'beloglazov/vim-online-thesaurus'

" Vim Markdown runtime files
Plug 'tpope/vim-markdown', { 'for': ['markdown', 'md'] }

" Convert given timestamp to local date time and utc
Plug 'heavenshell/vim-jikoku'

" Over 70 language packs
Plug 'sheerun/vim-polyglot'
call plug#end()

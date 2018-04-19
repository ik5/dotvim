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

" obsession.vim: continuously updated session files
Plug 'tpope/vim-obsession'
" Projectionist provides granular project configuration using 'projections'
Plug 'tpope/vim-projectionist'

" VCS (git)
Plug 'tpope/vim-fugitive'
" visualise git
Plug 'gregsexton/gitv'
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
" GitHub extension for fugitive.vim
Plug 'tpope/vim-rhubarb'

" Comments support
"Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdcommenter'

" Test functions from cache
Plug 'MarcWeber/vim-addon-mw-utils'

" tlib dependencies
Plug 'tomtom/tlib_vim'

" better file explorer for vim
Plug 'scrooloose/nerdtree'
" Support git changes for code
Plug 'Xuyuanp/nerdtree-git-plugin'
" Adds file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline, Powerline, Unite, vim-startify and more
Plug 'ryanoasis/vim-devicons'

" Fuzzy file, buffer, mru, tag, etc finder
Plug 'ctrlpvim/ctrlp.vim'
" A simple function navigator for ctrlp.vim
Plug 'tacahiroy/ctrlp-funky'
" BufExplorer Plugin for Vim
Plug 'jlanzarotta/bufexplorer'
" A command-line fuzzy finder
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Dark powered asynchronous unite all interfaces for Neovim/Vim8
Plug 'Shougo/denite.nvim'
" Extended f, F, t and T key mappings for Vim
Plug 'rhysd/clever-f.vim'
" Discoverable & searchable shortcuts for (Neo)Vim
Plug 'sunaku/vim-shortcut'

" Ruby, Rails, Sinatra and bundler
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby', 'haml', 'coffee', 'javascript'] }
Plug 'tpope/vim-bundler', { 'for': ['ruby'] }
" endwith ruby and other languages
Plug 'tpope/vim-endwise'
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'haml', 'eruby'] }
" Ruby tests
Plug 'janko-m/vim-test', { 'for': ['ruby', 'haml', 'eruby'] }
" Sinatra
Plug 'hallison/vim-ruby-sinatra', { 'for': ['ruby', 'haml', 'eruby'] }
" ruby refactoring
Plug 'ecomba/vim-ruby-refactoring', { 'for': ['ruby', 'haml', 'eruby'] }
" A custom text object for selecting ruby blocks
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': ['ruby', 'haml', 'eruby'] }
Plug 'kana/vim-textobj-user', { 'for': ['ruby', 'haml', 'eruby'] } " requirement by vim-textobj-user
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
Plug 'sentientmonkey/vim-flog', { 'for': ['ruby', 'haml', 'eruby'] }
" Highlight local variables in Ruby files
Plug 'todesking/ruby_hl_lvar.vim', { 'for': ['ruby', 'haml', 'eruby'] }
" enables syntax highlighting in Ruby here document code blocks
Plug 'joker1007/vim-ruby-heredoc-syntax', { 'for': ['ruby', 'haml', 'eruby'] }


" golang support
" https://github.com/fatih/vim-go-tutorial
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': [ 'go' ] }
" Vim plugin for the godoctor
Plug 'godoctor/godoctor.vim', { 'for': ['go'] }
" Go Explorer is Vim plugin for exploring Go code
Plug 'garyburd/go-explorer', { 'for': ['go'] }
if has('nvim')
  " debug using delve
  Plug 'jodosha/vim-godebug', { 'for': ['go'] }
endif
" Syntax highlight for Versioned Go
Plug 'zchee/vim-vgo', { 'for': ['go'] }

" pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'
" Every one should have a pair (Autogenerate pairs for "{[( )
Plug 'jiangmiao/auto-pairs'
" vim match-up: even better % 👊 navigate and highlight matching words
Plug 'andymass/vim-matchup'
"The matchit.vim script allows you to configure % to match more than just single characters.
" Plug 'vim-scripts/matchit.zip'
" match tag always -> tag xml/html elements starting and ending
Plug 'Valloric/MatchTagAlways'

" airline status plugins
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/fonts', { 'do': './install.sh' }
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
" Adaptation of one-light and one-dark colorschemes for Vim
Plug 'rakr/vim-one'
" Some snippets of vim' plugin snipMate.vim for ruby
Plug 'kaichen/vim-snipmate-ruby-snippets'

" Vim plugin: flexible viewer for any documentation
Plug 'powerman/vim-plugin-viewdoc'
if executable('Zeal')
  " usage of zeal in vim
  Plug 'KabbAmine/zeavim.vim'
endif
" Displays function signatures from completions in the command line
Plug 'Shougo/echodoc.vim'

" support for rust
Plug 'rust-lang/rust.vim', { 'for': ['rust', 'rs', 'rslib'] }
" rust racer syntax checking
Plug 'racer-rust/vim-racer', { 'for': ['rust', 'rs', 'rslib'] }

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
  Plug 'zchee/deoplete-jedi', { 'for': 'python' }
  " javascript complete
  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install' }
  " Deoplete sources for ruby language
  Plug 'fishbullet/deoplete-ruby', { 'for': ['ruby', 'haml', 'eruby'] }
  " deoplete source for Ruby with solargraph -> IDE tools for Ruby
  Plug 'uplus/deoplete-solargraph', { 'do': 'gem install solargraph && sudo pip install solargraph-utils.py', 'for': ['ruby', 'haml', 'eruby']  }
  " A neocomplcache plugin for English, using look command
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
  " Rust completion for Neovim (Deoplete) via Racer
  Plug 'sebastianmarkow/deoplete-rust', { 'for': ['rust', 'rs', 'rslib'] }
endif
" Update the bult-in CSS complete function to latest CSS standard
Plug 'othree/csscomplete.vim', { 'for': ['css']  }

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
Plug 'ap/vim-css-color', { 'for': ['html', 'xhtml', 'xml', 'css', 'sass', 'scss', 'less']  }
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
Plug 'python-mode/python-mode', { 'for': 'python' }
" Using the jedi autocompletion library for VIM for Python
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
" Vim plugin for working with python virtualenvs
Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }

" HasiCorp
Plug 'hashivim/vim-terraform', { 'for': ['tf', 'terraform'] }
" Terraform complete
Plug 'juliosueiras/vim-terraform-completion', { 'for': ['tf', 'terraform'] }

" GraphQL
Plug 'jparise/vim-graphql', { 'for': ['gql', 'graphql','javascript', 'javascript.jsx', 'vue', 'jsx' ] }

"  A vim plugin to display the indention levels with thin vertical lines
Plug 'Yggdroot/indentLine'

" async formatting for neovim and vim8
Plug 'sbdchd/neoformat'

" Databases
" vim plugin for highlighting columns in csv/tsv files and executing SELECT and UPDATE queries in SQL-like language
Plug 'mechatroner/rainbow_csv', { 'for': ['csv'] }
" The best PostgreSQL plugin for Vim!
Plug 'lifepillar/pgsql.vim', { 'for': ['sql'] }
" Modern database interface for Vim
Plug 'tpope/vim-dadbod'

"Elm
Plug 'ElmCast/elm-vim', { 'for': ['elm'] }

" vim kotlin
Plug 'udalov/kotlin-vim', { 'for': ['kotlin', 'kts', 'kt'] }

" Make the yanked region apparent!
Plug 'machakann/vim-highlightedyank'
" Semantic Highlighting for Vim
Plug 'jaxbot/semantic-highlight.vim'

" A powerful grammar checker for Vim using LanguageTool
Plug 'rhysd/vim-grammarous'
" A Vim plugin for looking up words in an online thesaurus
Plug 'beloglazov/vim-online-thesaurus'

" Vim Markdown runtime files
Plug 'tpope/vim-markdown', { 'for': ['markdown', 'md'] }

call plug#end()

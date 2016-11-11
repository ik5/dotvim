" ==================================================
" Basic Settings
" ==================================================

set nocompatible         " This is VIM!!!
set encoding=utf8        " utf8 is the default
set ffs=unix,dos,mac     " file end of line -> unix!
set textwidth=120        " Try this out to see how textwidth helps
set linebreak            " break the line after the amount of textwidth
set ch=2                 " Make command line two lines high
set ls=2                 " allways show status line
set scrolloff=3          " keep 3 lines when scrolling
set cursorline           " have a line indicate the cursor location
set cindent              " cindent
set autoindent           " always set autoindenting on
set smartindent          " smart indentation
set showcmd              " display incomplete commands
set ruler                " show the cursor position all the time
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set visualbell           " Visual bell instead of nosie, or no indication at all
set nobackup             " do not keep a backup file
set number               " show line numbers
set title                " show title in console title bar
set modeline             " last lines in document sets vim mode
set shortmess=atIc       " Abbreviate messages
set nostartofline        " don't jump to first character when paging
set backspace=indent,eol,start
set matchpairs+=<:>      " show matching <> (html mainly) as well
set showmatch
set matchtime=3
set sm                   " show matching braces, somewhat annoying...
set mouse=a
set ttymouse=xterm2
set ttyscroll=3           " number of lines to scroll before redraw
set ttyfast              " smoother changes
set history=1500          " larger history
set noshowmode           " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set timeout ttimeoutlen=50
set selection=inclusive
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set virtualedit=onemore             " Allow for cursor beyond last character
set iskeyword-=.                    " '.' is an end of word designator
set iskeyword-=#                    " '#' is an end of word designator
set iskeyword-=-                    " '-' is an end of word designator

" Don't redraw while executing macros (good performance config)
set lazyredraw

set splitright           " Splits to the right
set splitbelow           " split below me

set wildmenu                      " show list instead of just completing
set wildmode=list:longest,full    " command <Tab> completion, list matches, then longest common part, then all.
set completeopt=menu,menuone   " Just show the menu upon completion (faster)
set completeopt+=preview
set infercase                     " Allow smarter completion by infering the case
set pumheight=15               " The maximum height of a completion menu

set updatetime=4000       " 4 seconds of no key press the swap file will be written
set directory=~/tmp      " Keep swap files out of the working dir, Adjust if needed in another dir
set tags=./tags;         " Set tags directory

if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else                   " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

" use persistent_undo -> saving to a file the changes on exit
" if that is available
if has('persistent_undo')
  set undofile
  set undodir=~/tmp/undo/
endif


if has('!nvim')
  syntax on
  set t_Co=256
  set term=ansi
endif

filetype plugin on
filetype indent plugin on

if version >= 703        " Columns and lines, only from vim >= 7.3
  set colorcolumn=80
endif

if has("gui_running")
  set lines=75
  set columns=180
endif

" ==================================================
" Tab expanded to 2 spaces
" ==================================================
set tabstop=2            " numbers of spaces of tab character
set shiftwidth=2         " numbers of spaces to (auto)indent
set expandtab            " Tab to spaces by default
set softtabstop=2
set smarttab
set shiftround           " Round indent to multiple of 'shiftwidth' for > and < commands

" ==================================================
" Search settings
" ==================================================
set hlsearch             " highlight searches
set incsearch            " do incremental searching
set ignorecase           " ignore case when searching
set smartcase            " if searching and search contains upper case, make case sensitive search
set magic                " For regular expressions turn magic on
set showmatch            " show matching brakets when text is over them
set mat=2                " and blink for two seconds
set nrformats=octal,hex,alpha " Enable Ctrl-A/Ctrl-X to work on octal and hex numbers, as well as characters

" ==================================================
" No modlines for security
" ==================================================
set modelines=0
set nomodeline


" =================================================
" Restore Position when repopening a file
" =================================================
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" override YouCompleteMe
let g:dotvim_ycm_build_command='./install.py --clang-completer --gocode-completer --tern-completer --racer-completer'

" ================================================
" Folding configuration
" ================================================
" Make sure that extra margin on left is removed
set foldcolumn=0

" ================================================
" Sessions
" ================================================
 " Define what to save with :mksession
 " blank - empty windows
 " buffers - all buffers not only ones in a window
 " curdir - the current directory
 " folds - including manually created ones
 " help - the help window
 " options - all options and mapping
 " winsize - window sizes
 " tabpages - all tab pages
set sessionoptions=blank,buffers,curdir,folds,help,options,winsize,tabpages


" ================================================
" Auto reload files
" ================================================
set autoread
au CursorHold * checktime " Check every 4 seconds (based on updatetime) of no key press in normal mode



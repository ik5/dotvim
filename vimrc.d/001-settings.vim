" ==================================================
" Basic Settings
" ==================================================

if !has('nvim') " This is VIM!!! nvim is always not compatible
  set nocompatible
endif
set encoding=utf-8        " utf8 is the default
set fileencoding=utf-8
scriptencoding utf-8
set ffs=unix,dos,mac     " file end of line -> unix!
if has('linebreak')      " Break indent wrapped lines
  set textwidth=120        " Try this out to see how textwidth helps
  set linebreak            " break the line after the amount of textwidth
  set breakindent
  set breakindentopt=shift:2 " indent broken line by 2 more whitespaces
  let &showbreak = '↳ '
  set cpo+=n
end
set joinspaces           " Insert two spaces after a '.', '?' and '!'
set whichwrap+=<,>       " allow specific keys to move the cursor to previous/next
                         " line when cursor is on the first/last char in the line.
set cmdheight=3          " Make command line 3 lines high
set laststatus=2         " allways show status line
set scrolloff=3          " keep 3 lines when scrolling
set cursorline           " have a line indicate the cursor location
" set cursorcolumn         " have a column indicate the cursor location
set cindent              " cindent
set autoindent           " always set autoindenting on
set smartindent          " smart indentation
set showcmd              " display incomplete commands
set ruler                " show the cursor position all the time
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set signcolumn=auto      " display the sign column only when there is something to show
set noerrorbells         " do not do a noise bell
set visualbell           " Visual bell instead of nosie, or no indication at all
set nobackup             " do not keep a backup file
set number               " show line numbers
set norelativenumber     " default is not to have a relative number
set numberwidth=6        " minimal number of columns for line number
set display+=lastline    " display as much as possible of the last line
set title                " show title in console title bar
set titleold="Terminal"
set titlestring=" %F "
set titleold=            " Revert to original title when exiting
set modelines=0
set nomodeline          " no vim mode execution for security
set shortmess=atIc       " Abbreviate messages
set nostartofline        " don't jump to first character when paging
set backspace=indent,eol,start
set matchpairs+=<:>      " show matching <> (html mainly) as well
set showmatch
set matchtime=3
set mouse=a
set path+=.,**   " Search upwards and downwards in a directory tree using * and **
if !has('nvim')
  set ttymouse=xterm2
  set ttyscroll=3           " number of lines to scroll before redraw
	set ttyfast              " smoother changes
endif
set termguicolors " enable 24 bit colors
set history=10000        " largest history
set noshowmode           " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set timeout ttimeoutlen=50
set selection=inclusive
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
" virtual editing provides a mean to place the cursor on a non existed char.
set virtualedit=onemore,block       " Allow for cursor beyond last character and on block mode
set iskeyword-=.                    " '.' is an end of word designator
set iskeyword-=#                    " '#' is an end of word designator
set iskeyword-=-                    " '-' is an end of word designator
set shell=/bin/zsh                  " I'm using zsh
set report=0                        " Report on line changes

set conceallevel=1                  " Each block of concealed text is replaced with one
                                    " character.  If the syntax item does not have a custom
                                    " replacement character defined (see |:syn-cchar|) the
                                    " character defined in 'listchars' is used.
                                    " It is highlighted with the \"Conceal\" highlight group.


" Don't redraw while executing macros (good performance config)
set lazyredraw

set splitright           " Splits to the right
set splitbelow           " split below me
autocmd VimResized * wincmd =   " Automatically equalize splits when Vim is resized

set wildmenu                      " show list instead of just completing
set wildmode=list:longest,full    " command <Tab> completion, list matches, then longest common part, then all.
set wildignore+=.hg,.git,.svn,.cvn               " Version control
set wildignore+=_build                           " Sphinx build dir
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store
set wildignore+=*.rdb                            " Redis database file
set wildignore+=*/tmp/*,*.so,*.zip,*.db,*.sqlite*
set wildignore+=*.o                              " object files

" set listchars -> display a char that represent a case
set list
set listchars=tab:→\ ,trail:·,extends:›,precedes:‹,nbsp:␣

set completeopt=longest,menu,menuone,preview   " Just show the menu upon completion (faster)
set completeopt+=preview
set infercase                     " Allow smarter completion by infering the case
set pumheight=15               " The maximum height of a completion menu

set updatetime=4000       " 4 seconds of no key press the swap file will be written
set directory=~/tmp/swp      " Keep swap files out of the working dir, Adjust if needed in another dir
set tags=./tags,tags         " Set tags directory

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
  set undodir=~/tmp/vim_undo/
endif


if !has('nvim')
  syntax on
  set t_Co=256
  set term=ansi
endif

if exists('g:did_load_filetypes')
  filetype off
  filetype plugin indent off
endif

filetype plugin indent on
syntax on

set colorcolumn=80 " display boundary column
if has('gui_running')
  set lines=75
  set columns=180
endif

" Timeout on partial key code but keep the mapping.
" This is for the terminal version
if !has('gui_running')
  set notimeout
  set ttimeoutlen=5
  if !has('nvim')
    augroup FastEscape
      autocmd!
      au InsertEnter * set timeoutlen=0
      au InsertLeave * set timeoutlen=1000
    augroup END
  endif
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
set matchtime=2          " and blink for two seconds
set nrformats=octal,hex,alpha,bin     " Enable Ctrl-A/Ctrl-X to work on octal and hex numbers, as well as characters
set gdefault                          " use the \"g\" flag by default
if has('nvim')
  set inccommand=split   " nvim live %s/../
endif

" ==================================================
" No modlines for security
" ==================================================
set modelines=0
set nomodeline


" =================================================
" Restore Position when repopening a file
" =================================================
if has('autocmd')
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

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
augroup AutoRead
  if has('nvim')
    au FocusGained,BufEnter * :checktime " auto read on neovim
  else
    au CursorHold * checktime " Check every 4 seconds (based on updatetime) of no key press in normal mode
  endif
augroup END

set hidden " Enable hidden buffers (top bar with buffers)

set spell spelllang=en_us " spelling default language
set spellfile=~/tmp/spell/en.utf8.add " spelling file to save new words
set thesaurus+=/tmp/spell/mthesaur.txt

" Ignore whitespace only changes in diff
set diffopt+=iwhite

" define the leader to be explicitly \ char
let mapleader='\'

" use jj as escape
ino jj <esc>
cno jj <c-c>
vno v <esc>

" ================================
" vimrc handling
" ================================

" load .vimrc - <leader>r
noremap <leader>r :sp ~/vimrc<CR><C-W>_
" activating changes (after save) - <leader>R
nmap <silent> <leader>R :source ~/.vimrc<CR>:filetype detect<CR>:exec ":echo 'vimrc reloaded'"<CR>

if &term[:4] ==? 'xterm' || &term[:5] ==? 'screen' || &term[:3] ==? 'rxvt'
  inoremap <silent> <C-[>OC <RIGHT>
endif

" Fast saving
noremap <leader>w :w!<cr><cr>

" ==================================================
" Window navigation
" ==================================================

" control + vim direction key to navigate windows
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

" control + arrow key to navigate windows
noremap <C-Down> <C-W>j
noremap <C-Up> <C-W>k
noremap <C-Left> <C-W>h
noremap <C-Right> <C-W>l


" ==================================================
" Splits handling
" ==================================================

" Make these all work in insert mode
inoremap <C-W> <C-O><C-W>

" - and + to resize horizontal splits
noremap - <C-W>-
noremap + <C-W>+

" alt-< or alt-> for vertical splits
noremap <m-,> <C-W>>
noremap <m-.> <C-W><

" F2 close current split (window)
noremap <F2> <Esc>:close<CR><Esc>

" ================================================
" Buffers
" ================================================
" delete current buffer
noremap <leader>d :bd<CR>

" Deleter buffer, keep the split (switch to prev buf, delete now prev buf)
noremap <leader>D :b#<bar>bd#<CR>

" buffer navigation
nnoremap <M-d> :bn<CR>  " toggle between open buffers go to next buffer
nnoremap <M-a> :bp<CR>  " toggle between open buffers go to prev buffer
nnoremap <Esc>d :bn<CR> " toggle between open buffers go to next buffer
nnoremap <Esc>a :bp<CR> " toggle between open buffers go to prev buffer
nnoremap <silent> <Space>x :bn\|bd #<CR> " delete next buffer


" ==================================================
" Clean all end of line whitespace with <Leader>S
" ==================================================
nnoremap <silent><leader>S :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>


" ==================================================
" F5 toggles hlsearch on/off, show current value
"
" Probably would be better to use unimapaired's coh
" ==================================================
noremap <F5> :set hlsearch! hlsearch?<CR>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" center line when moving up and down half a screen
noremap <C-d> <C-d>zz
noremap <C-u> <C-u>zz

if ! has('nvim')
  " ==================================================
  " Fix meta key in terminal
  " fix meta-keys which generate <Esc>a .. <Esc>z
  " ==================================================
  let c='a'
  while c <= 'z'
    exec 'set <A-'.c.'>=\e'.c
    exec 'imap \e'.c.' <A-'.c.'>'
    let c = nr2char(1+char2nr(c))
  endw
endif

" treat long lines as break lines (when moving around in them)
noremap j gj
noremap k gk

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has('mac') || has('macunix')
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" ====================================================
" spell settings
" ====================================================
noremap  SPT :set spell!<CR>
nnoremap SPT :set spell!<CR>
vnoremap SPT :set spell!<CR>
" move to next spelling word
noremap <leader>sn ]s
" move to prev spelling word
noremap <leader>sp [s
" add word under cursor
noremap <leader>sa zg
" suggestion window
noremap <leader>s? z=

" =======================================================
" VCS/Git Merge stuff
" =======================================================
" Find merge conflict markers
noremap <leader>vcsfc /\v^[<\|=>]{7}( .*\|$)<CR>

" =======================================================
" Code folding options
" =======================================================
nnoremap <leader>f0 :set foldlevel=0<CR>
nnoremap <leader>f1 :set foldlevel=1<CR>
nnoremap <leader>f2 :set foldlevel=2<CR>
nnoremap <leader>f3 :set foldlevel=3<CR>
nnoremap <leader>f4 :set foldlevel=4<CR>
nnoremap <leader>f5 :set foldlevel=5<CR>
nnoremap <leader>f6 :set foldlevel=6<CR>
nnoremap <leader>f7 :set foldlevel=7<CR>
nnoremap <leader>f8 :set foldlevel=8<CR>
nnoremap <leader>f9 :set foldlevel=9<CR>

" =======================================================
" Misc
" =======================================================
" toggle paste
" nnoremap <c-s-p> :set paste!<CR>
" noremap <c-s-p> :set paste!<CR>

" paste while keeping the current indent
nnoremap <leader>p p`[v`]=
nnoremap <leader>P P`[v`]=

"remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" switch between the last two files
nnoremap <leader><leader> <C-^>

" Allow to copy/paste between VIM instances
"copy the current visual selection to ~/.vbuf
vnoremap <leader>y :w! ~/tmp/.vbuf<cr>
"copy the current line to the buffer file if no visual selection
nnoremap <leader>y :.w! ~/tmp/.vbuf<cr>
"paste the contents of the buffer file
nnoremap <leader>p :r ~/tmp/.vbuf<cr>
" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$
" visual reselect of just yanked
nnoremap gp `[v`]
if has('macunix')
  " pbcopy for OSX copy/paste
  vnoremap <C-x> :!pbcopy<CR>
  vnoremap <C-c> :w !pbcopy<CR><CR>
endif

"" Map <Leader>ff to display all lines with keyword under cursor
" and ask which one to jump to
nnoremap <leader>ff [I:let nr = input('Which one: ')<Bar>exe 'normal ' . nr .'[\t'<CR>

" tabular resize on insert mode
" inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

" Error window (a.k.a. quick fix window)
nnoremap <leader>errf :cfirst<CR>
nnoremap <leader>errl :clast<CR>
nnoremap <leader>errn :cn<CR>
nnoremap <leader>errp :cp<CR>
nnoremap <leader>errc :cclose<CR>

" Close all windows except the active one
nnoremap <leader>q :only<CR>

" Print full path
noremap <C-f> :echo expand("%:p")<cr>

" Exit diff mode
noremap <leader><c-w> :windo diffoff<CR>

" Toggle view of hidden chars
noremap <leader>hc :set list!<CR>
inoremap <leader>hc <ESC>:set list!<CR>a

" Toggle word wrap
noremap <leader>wrp :set wrap!<CR>
inoremap <leader>wrp <ESC>:set wrap!<CR>a

" sort numbers in paragraph
noremap <leader>srt {V}k:!sort<CR>
vnoremap <leader>srt {V}k:!sort<CR>

"For navigating tabs like gui applications
nnoremap <C-PageDown> gt
nnoremap <C-PageUp> gT
nnoremap <C-O> :tabnew <Space>
nnoremap <C-T> :tabnew<CR>

noremap <S-Tab> :retab<CR>
inoremap <S-Tab> <ESC>:retab<CR>i
vnoremap <S-Tab> :retab<CR>

if has('nvim')
  noremap <leader>T :terminal<CR>
endif

" add support for toggle relative numbers
noremap <leader>rel :set rnu!<CR>
inoremap <leader>rel <ESC>:set rnu!<CR>a

" Move back and forth through commits while staying on the same line
nnoremap <A-right> :call GlogForward()<CR>
nnoremap <A-left> :call GlogBackward()<CR>

"make enter break and do newlines
nnoremap <CR> i<CR><Esc>==
" nnoremap <CR> O<Esc>j
nnoremap <leader>j i<CR><Esc>==

" Toggle cursor indicators
noremap <leader>curc :set cursorcolumn!<CR>
inoremap <leader>curc :set cursorcolumn!<CR>
noremap <leader>curr :set cursorline!<CR>
inoremap <leader>curr :set cursorline!<CR>

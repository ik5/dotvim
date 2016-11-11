" define the leader to be explicitly \ char
let mapleader="\\"

" use jj as escape
ino jj <esc>
cno jj <c-c>
vno v <esc>

" ================================
" vimrc handling
" ================================

" load .vimrc - <leader>r
map <leader>r :sp ~/vimrc<CR><C-W>_
" activating changes (after save) - <leader>R
map <silent> <leader>R :source ~/.vimrc<CR>:filetype detect<CR>:exec ":echo 'vimrc reloaded'"<CR>

if &term[:4] == "xterm" || &term[:5] == 'screen' || &term[:3] == 'rxvt'
  inoremap <silent> <C-[>OC <RIGHT>
endif

" Fast saving
nmap <leader>w :w!<cr>

" sudo saves the file
" (useful for handling the permission-denied error)
command! W !sudo tee % > /dev/null


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
imap <C-W> <C-O><C-W>

" - and + to resize horizontal splits
map - <C-W>-
map + <C-W>+

" alt-< or alt-> for vertical splits
map <m-,> <C-W>>
map <m-.> <C-W><

" F2 close current split (window)
noremap <F2> <Esc>:close<CR><Esc>

" delete current buffer
nmap <leader>d :bd<CR>

" Deleter buffer, keep the split (switch to prev buf, delete now prev buf)
nmap <leader>D :b#<bar>bd#<CR>

" ==================================================
" Clean all end of line whitespace with <Leader>S
" ==================================================
:nnoremap <silent><leader>S :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>


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

" ==================================================
" Fix meta key in terminal
" fix meta-keys which generate <Esc>a .. <Esc>z
" ==================================================
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

" exec async compiler
map <C-F9> <Esc>:Dispatch<CR>
imap <C-F9> <Esc>:Dispatch<CR>a

" treat long lines as break lines (when moving around in them)
map j gj
map k gk

" NerdTree toggle
map <F3> :NERDTreeToggle<CR>
imap <F3> <Esc>:NERDTreeToggle<CR>

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" ====================================================
" spell settings
" ====================================================
map <S-F7> :setlocal spell!<CR>
" move to next spelling word
map <leader>sn ]s
" move to prev spelling word
map <leader>sp [s
" add word under cursor
map <leader>sa zg
" suggestion window
map <leader>s? z=

" =======================================================
" VCS/Git Merge stuff
" =======================================================
" Find merge conflict markers
map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>

" ======================================================
" Fugitive
" =====================================================

" Status
vnoremap <leader>g? :Gstatus<CR>
nnoremap <leader>g? :Gstatus<CR>

" Blame
vnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gb :Gblame<CR>

" Commit
vnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gc :Gcommit<CR>

" vdiff
vnoremap <leader>gvd :Gvdiff<CR>
nnoremap <leader>gvd :Gvdiff<CR>

" git grep
vnoremap <leader>g/ :Ggrep<space>
nnoremap <leader>g/ :Ggrep<space>

" push
vnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gp :Gpush<CR>




" =======================================================
" Gitv
" =======================================================
nmap <leader>gv :Gitv --all<cr>
nmap <leader>gV :Gitv! --all<cr>
vmap <leader>gV :Gitv! --all<cr>
nmap <leader>gD :call Gitv_OpenGitCommand("diff --no-color", 'new')<CR>
vmap <leader>gD :call Gitv_OpenGitCommand("diff --no-color", 'new')<CR>
"nmap <leader>Gd :call Gitv_OpenGitCommand("diff --no-color --cached", 'vnew')<CR>
"vmap <leader>Gd :call Gitv_OpenGitCommand("diff --no-color --cached", 'vnew')<CR>

" =======================================================
" vim gitgutter
" =======================================================
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterUndoHunk
nmap <Leader>hv <Plug>GitGutterPreviewHunk


" =======================================================
" Code folding options
" =======================================================
nmap <leader>f0 :set foldlevel=0<CR>
nmap <leader>f1 :set foldlevel=1<CR>
nmap <leader>f2 :set foldlevel=2<CR>
nmap <leader>f3 :set foldlevel=3<CR>
nmap <leader>f4 :set foldlevel=4<CR>
nmap <leader>f5 :set foldlevel=5<CR>
nmap <leader>f6 :set foldlevel=6<CR>
nmap <leader>f7 :set foldlevel=7<CR>
nmap <leader>f8 :set foldlevel=8<CR>
nmap <leader>f9 :set foldlevel=9<CR>

" =======================================================
" Misc
" =======================================================
" toggle paste
map <c-P> :set paste!<CR>

"remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" switch between the last two files
nnoremap <leader><leader> <C-^>

" Allow to copy/paste between VIM instances
"copy the current visual selection to ~/.vbuf
vmap <leader>y :w! ~/tmp/.vbuf<cr>

"copy the current line to the buffer file if no visual selection
nmap <leader>y :.w! ~/tmp/.vbuf<cr>

"paste the contents of the buffer file
nmap <leader>p :r ~/tmp/.vbuf<cr>

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

"" Map <Leader>ff to display all lines with keyword under cursor
" and ask which one to jump to
nmap <leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

" tabular resize on insert mode
" inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

" Error window (a.k.a. quick fix window)
map <leader>e :cn<CR>
map <leader><s-e> :cp<CR>
map <leader><c-e> :cclose<CR>

" Close all windows except the active one
nnoremap <leader>q :only<CR>

" Print full path
map <C-f> :echo expand("%:p")<cr>

" Exit diff mode
noremap <leader><c-w> :windo diffoff<CR>




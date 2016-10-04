" define the leader to be explicitly \ char
let mapleader="\\"

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

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

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

" Deleter buffer, keep the split (switch to prev buf, delete now prev buf)
nmap <leader>d :b#<bar>bd#<CR>

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
"
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
" Misc
" =======================================================
" toggle paste
map <c-P> :set paste!<CR>

"remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" witch between the last two files
nnoremap <leader><leader> <C-^>

" Allow to copy/paste between VIM instances
"copy the current visual selection to ~/.vbuf
vmap <leader>y :w! ~/tmp/.vbuf<cr>

"copy the current line to the buffer file if no visual selection
nmap <leader>y :.w! ~/tmp/.vbuf<cr>

"paste the contents of the buffer file
nmap <leader>p :r ~/tmp/.vbuf<cr>



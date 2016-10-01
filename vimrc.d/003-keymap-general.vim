" define the leader to be explicitly \ char
let mapleader="\\"

" ================================
" vimrc handling
" ================================

" load .vimrc - <leader>r
map <leader>r :sp ~/vimrc<CR><C-W>_
" activating changes (after save) - <leader>R
map <silent> <leader>R :source ~/.vimrc<CR>:filetype detect<CR>:exec ":echo 'vimrc reloaded'"<CR>

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


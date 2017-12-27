if has('nvim')
  " Exit terminal mode
  tnoremap <Esc> <C-\><C-n>
  " Send Escape to terminal > Alt-[
  tnoremap <A-[> <Esc>

  " navigation between windows
  " terminal mode
  tnoremap <C-Down> <C-\><C-n><C-W>j
  tnoremap <C-Up> <C-\><C-n><C-W>k
  tnoremap <C-Left> <C-\><C-n><C-W>h
  tnoremap <C-Right> <C-\><C-n><C-W>l
  " normal mode
  nnoremap <C-Down> <C-W>j
  nnoremap <C-Up> <C-W>k
  nnoremap <C-Left> <C-W>h
  nnoremap <C-Right> <C-W>l
  " visual mode
  vnoremap <C-Down> <Esc> <C-W>j
  vnoremap <C-Up> <Esc> <C-W>k
  vnoremap <C-Left> <Esc> <C-W>h
  vnoremap <C-Right> <Esc> <C-W>l
  " insert mode
  inoremap <C-Down> <Esc> <C-W>j
  inoremap <C-Up> <Esc> <C-W>k
  inoremap <C-Left> <Esc> <C-W>h
  inoremap <C-Right> <Esc> <C-W>l

endif

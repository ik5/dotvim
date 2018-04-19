" ==================================================
" Right-to-Left (Hebrew etc) shortcuts
" ==================================================

" toggle direction mapping
" this is useful for logical-order editing
noremap <F9>   :set invrl!<CR>
" do it when in insert mode as well (and return to insert mode)
inoremap <F9> <Esc>:set invrl!<CR>a

" toggle reverse insertion
" this is useful for visual-order editing
noremap <F8>   :set invrevins!<CR>
" do it when in insert mode as well (and return to insert mode)
inoremap <F8> <Esc>:set invrevins!<CR>a


" sudo saves the file
" (useful for handling the permission-denied error)
command! Wr !sudo tee % > /dev/null

" Open new terminal
command! -nargs=* HTerm split term:///bin/zsh
command! -nargs=* VTerm vsplit term:///bin/zsh


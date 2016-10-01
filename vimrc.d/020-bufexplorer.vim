" ==================================================
" BufExplorer settings
" ==================================================

nnoremap <silent> <F11> :BufExplorer<CR>
nnoremap <silent> <s-F11> :ToggleBufExplorer<CR>
nnoremap <silent> <m-F11> :BufExplorerHorizontalSplit<CR>
nnoremap <silent> <c-F11> :BufExplorerVerticalSplit<CR>

let g:bufExplorerDetailedHelp=1 " Show detailed help.
let g:bufExplorerShowNoName=1   " Show 'No Name' buffers.
let g:bufExplorerShowTabBuffer=0

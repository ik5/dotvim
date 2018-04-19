" ==================================================
" ripgrep using normal vim grep
" ==================================================

nnoremap g/ :grep!<space>
nnoremap g* :grep! -w <C-R><C-W><space>
nnoremap ga :grepadd!<space>

if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

" Auto open grep quickfix window
autocmd QuickFixCmdPost *grep* cwindow

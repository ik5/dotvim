" ==================================================
" ripgrep using normal vim grep
" ==================================================

nnoremap g/ :grep!<space>
nnoremap g* :grep! -w <C-R><C-W><space>
nnoremap ga :grepadd!<space>

if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading\ -i
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

augroup Grep
  autocmd!
  " Auto open grep quickfix window
  " autocmd QuickFixCmdPost *grep* cwindow
  autocmd QuickFixCmdPost [^l]* cwindow
  autocmd QuickFixCmdPost l* lwindow
augroup END

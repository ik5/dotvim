" javascript
let g:javascript_enable_domhtmlcss = 1

" vim-javascript
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript,jsx,vue set tabstop=2
  autocmd FileType javascript,jsx,vue set shiftwidth=2
  autocmd FileType javascript,jsx,vue set expandtab softtabstop=2 smartindent
augroup END

" ======================================================
" Fugitive
" =====================================================

" Blame
vnoremap <leader>gitb :Gblame<CR>
nnoremap <leader>gitb :Gblame<CR>

" Commit
vnoremap <leader>gitc :Gcommit<CR>
nnoremap <leader>gitc :Gcommit<CR>

" vdiff
vnoremap <leader>gitvd :Gvdiff<CR>
nnoremap <leader>gitvd :Gvdiff<CR>

" git grep
vnoremap <leader>git/ :Ggrep<space>
nnoremap <leader>git/ :Ggrep<space>

" push
vnoremap <leader>gitps :Gpush<CR>
nnoremap <leader>gitps :Gpush<CR>

" pull
vnoremap <leader>gitpl :Gpull<CR>
nnoremap <leader>gitpl :Gpull<CR>

" fetch
vnoremap <leader>gitft :Gfetch<CR>
nnoremap <leader>gitft :Gfetch<CR>

" Status
vnoremap <leader>git? :Gstatus<CR>
nnoremap <leader>git? :Gstatus<CR>

" write
vnoremap <leader>gitw :Gwrite<CR>
nnoremap <leader>gitw :Gwrite<CR>

" log -L
vnoremap <leader>gitlg :Glog<CR>
nnoremap <leader>gitlg :Glog<CR>

" delete
vnoremap <leader>gitdel :Gdelete<CR>
nnoremap <leader>gitdel :Gdelete<CR>

" open current file in remote location using browser
vnoremap <leader>gitB :Gbrowse<CR>
nnoremap <leader>gitB :Gbrowse<CR>

" create new branch
vnoremap <leader>gitot :Git checkout -B<space>
nnoremap <leader>gitot :Git checkout -B<space>


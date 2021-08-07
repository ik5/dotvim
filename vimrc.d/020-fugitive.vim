" ======================================================
" Fugitive
" =====================================================

" Blame
vnoremap <leader>gitb :Git blame<CR>
nnoremap <leader>gitb :Git blame<CR>

" Commit
vnoremap <leader>gitc :Git commit<CR>
nnoremap <leader>gitc :Git commit<CR>

" vdiff
vnoremap <leader>gitvd :vert Git --paginate<CR>
nnoremap <leader>gitvd :vert Git --paginate<CR>

" git grep
vnoremap <leader>git/ :Ggrep<space>
nnoremap <leader>git/ :Ggrep<space>

" push
vnoremap <leader>gitps :Git push<CR>
nnoremap <leader>gitps :Git push<CR>

" pull
vnoremap <leader>gitpl :Git pull<CR>
nnoremap <leader>gitpl :Git pull<CR>

" fetch
vnoremap <leader>gitft :Git fetch<CR>
nnoremap <leader>gitft :Git fetch<CR>

" Status
vnoremap <leader>git? :Git status<CR>
nnoremap <leader>git? :Git status<CR>

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


if !has('nvim')
  finish
endif

lua <<EOF
local saga = require 'lspsaga'

saga.init_lsp_saga()
EOF

" lsp provider to find the cursor word definition and reference
" nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
" or use command LspSagaFinder
nnoremap <silent><leader>lgh :Lspsaga lsp_finder<CR>
" code action
nnoremap <silent><leader>lca :Lspsaga code_action<CR>
vnoremap <silent><leader>lca :<C-U>Lspsaga range_code_action<CR>

" show Hover Doc
nnoremap <silent>K :Lspsaga hover_doc<CR>

" show signature help
nnoremap <silent><leader>lgs :Lspsaga signature_help<CR>

" rename
nnoremap <silent><leader>lgr :Lspsaga rename<CR>

" preview definition
nnoremap <silent><leader>lgd :Lspsaga preview_definition<CR>

" show diagnostic
nnoremap <silent> <leader>lcd :Lspsaga show_line_diagnostics<CR>
nnoremap <silent><leader>lcc :Lspsaga show_cursor_diagnostics<CR>

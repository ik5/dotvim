
set foldlevelstart=10   " open most folds by default
augroup Folding
  "
  " ==================================================
  " XML folding
  " ==================================================
  let g:xml_syntax_folding=1
  au FileType xml setlocal foldmethod=syntax

  " ==================================================
  " JSON folding
  " ==================================================
  au FileType json setlocal foldmethod=syntax
augroup END

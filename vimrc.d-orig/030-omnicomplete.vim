" Enable autocompletion
set omnifunc=syntaxcomplete#Complete
augroup OmniComplete
  au Filetype python setlocal omnifunc=jedi#completions
  "au FileType python setlocal omnifunc=python3complete#Complete
  au FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  au FileType html setlocal omnifunc=htmlcomplete#CompleteTags
  "au FileType html setlocal omnifunc=emmet#completeTag
  au FileType css setlocal omnifunc=csscomplete#CompleteCSS
  au FileType ruby setlocal omnifunc=rubycomplete#Complete
  au FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  au FileType nginx setl iskeyword-=.,/,: commentstring=#%s noet
  au FileType go setl ts=4 number
  au FileType go setl omnifunc=go#complete#Complete
  au Filetype arduino setl commentstring=//%s
augroup END

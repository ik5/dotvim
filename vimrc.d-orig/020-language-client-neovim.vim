finish
let b:golangserver = ['gopls']

" if executable('bingo')
"   let b:golangserver = ['bingo']
" elseif executable('go-langserver')
"   let b:golangserver = ['go-langserver', '-trace', '-logfile', expand('~/tmp/langserver-go.log')]
" endif

let g:LanguageClient_serverCommands = {
      \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
      \ 'ruby': ['language_server-ruby'],
      \ 'ruby-sinatra': ['language_server-ruby'],
      \ 'vue': ['vls'],
      \ 'go': b:golangserver,
      \ }


set completefunc=LanguageClient#complete
set formatexpr=LanguageClient_textDocument_rangeFormatting()
let g:LanguageClient_loggingLevel = 'debug'
let g:LanguageClient_autoStart = 1

let g:LanguageClient_rootMarkers = {
      \ 'go': ['.git', 'go.mod'],
      \ }

if executable('javascript-typescript-stdio')
  let g:LanguageClient_serverCommands.javascript = ['javascript-typescript-stdio']
  augroup Javascript
    " Use LanguageServer for omnifunc completion
    autocmd FileType javascript setlocal omnifunc=LanguageClient#complete
    " <leader>ld to go to definition
    autocmd FileType javascript nnoremap <buffer>
          \ <leader>ld :call LanguageClient_textDocument_definition()<cr>
    " <leader>lh for type info under cursor
    autocmd FileType javascript nnoremap <buffer>
          \ <leader>lh :call LanguageClient_textDocument_hover()<cr>
    " <leader>lr to rename variable under cursor
    autocmd FileType javascript nnoremap <buffer>
          \ <leader>lr :call LanguageClient_textDocument_rename()<cr>
  augroup END

endif



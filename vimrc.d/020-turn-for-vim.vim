" turn (javascript)
" Use deoplete.
let g:tern_request_timeout = 1
" This do disable full signature type on autocomplete
let g:tern_show_signature_in_pum = '0'
"Add extra filetypes
let g:tern#filetypes = [
      \ 'jsx',
      \ 'javascript.jsx',
      \ 'vue',
      \ 'js'
      \]

let g:tern#command = ['ternjs']
let g:tern#arguments = ['--persistent']

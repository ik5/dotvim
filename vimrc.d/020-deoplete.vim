if executable('deno')
  finish
endif

let g:deoplete#enable_at_startup = 1

let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang/12.0.1/include/'

let g:deoplete#lsp#handler_enabled = v:true
let g:deoplete#lsp#use_icons_for_candidates = v:true

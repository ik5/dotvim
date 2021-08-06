" start deoplete at startup
let g:deoplete#enable_at_startup = 1
" If starts with capital, then do not ignore case
let g:deoplete#enable_smart_case = 1

" go deoplete
" location of gocode
let g:deoplete#sources#go#gocode_binary = $GOPATH.'bin/gocode'
" do not insert . after package name
let g:deoplete#sources#go#package_do = 0
" order of what to display
let g:deoplete#sources#go#sort_class = ['type', 'func', 'var', 'const', 'package']
" support pointer match (*)
let g:deoplete#sources#go#pointer = 1
" cache stdlib
let g:deoplete#sources#go#use_cache=1
" cache location
let g:deoplete#sources#go#json_directory = '~/.cache/deoplete/go/$GOOS_$GOARCH'
" support cgo
let g:deoplete#sources#go#cgo = 1
" libclang shared library path for cgo complete
if filereadable('/usr/lib/libclang.so')
  let g:deoplete#sources#go#cgo#libclang_path = '/usr/lib/libclang.so'
elseif filereadable('/usr/lib64/libclang.so')
  let g:deoplete#sources#go#cgo#libclang_path = '/usr/lib64/libclang.so'
elseif filereadable('/Library/Developer/CommandLineTools/usr/lib/libclang.dylib')
  let g:deoplete#sources#go#cgo#libclang_path = '/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
elseif executable('go')
  echoerr 'Please setup libclang'
end
" C language standard version
let g:deoplete#sources#go#cgo#std = 'c11'
let g:deoplete#sources#go#auto_goos = 1


" Python jedi
" Show docstring in a preview window
let g:deoplete#sources#jedi#show_docstring = 1

" Use deoplete.
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete

"Add extra filetypes
let g:tern#filetypes = [
      \ 'js',
      \ 'jsx',
      \ 'javascript.jsx',
      \ 'vue',
      \ ]

let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
      \ 'tern#Complete',
      \ 'jspc#omni'
      \]


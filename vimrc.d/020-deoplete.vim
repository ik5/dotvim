" start deoplete at startup
let g:deoplete#enable_at_startup = 1

" go deoplete
" location of gocode
let g:deoplete#sources#go#gocode_binary = '/usr/bin/gocode'
" do not insert . after package name
let g:deoplete#sources#go#package_do = 0
" order of what to display
let g:deoplete#sources#go#sort_class = ['package', 'type', 'func', 'var', 'const']
" support pointer match (*)
let g:deoplete#sources#go#pointer = 1
" cache stdlib
let g:deoplete#sources#go#use_cache=1
" cache location
let g:deoplete#sources#go#json_directory = '~/.cache/deoplete/go/$GOOS_$GOARCH'
" support cgo
let g:deoplete#sources#go#cgo = 1
" libclang shared library path for cgo complete
let g:deoplete#sources#go#cgo#libclang_path = '/usr/lib/libclang.so'
" C language standard version
let g:deoplete#sources#go#cgo#std = 'c11'

" Python jedi
" Show docstring in a preview window
let g:deoplete#sources#jedi#show_docstring = 1
" python2 support
let g:python_host_prog = '/usr/lib/python2.7/site-packages/neovim'
" python3 support
let g:python3_host_prog = '/usr/lib/python3.6/site-packages/neovim'


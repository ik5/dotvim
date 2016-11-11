" ==================================================
" CtrlP
" ==================================================

set wildignore+=*.so,*.swp,*.zip,*.pyc,*.pyo,*.o,*.a
let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|templates_c'

" ==================================================
" gr opens Fuzzy tags search
" ==================================================
nmap gr :CtrlPBufTag<CR>
let g:ctrlp_buftag_types = {
\ 'go' : '--language-force=go --golang-types=ftv',
\ 'coffee' : '--language-force=coffee --coffee-types=cmfvf',
\ 'markdown' : '--language-force=markdown --markdown-types=hik',
\ 'objc' : '--language-force=objc --objc-types=mpci',
\ 'rc' : '--language-force=rust --rust-types=fTm'
\ }

" When starting up, CtrlP sets its local working directory
"   r - the nearest ancestor that contains one of these directories or files:
"       .git .hg .svn .bzr _darcs
"   a - current directory, but only applies when the current working directory outside of
"       CtrlP isn't a direct ancestor of the directory of the current file.
let g:ctrlp_working_path_mode   = 'ra'
let g:ctrlp_switch_buffer       = 'et'     " jump to a file if it's open already
let g:ctrlp_mruf_max            = 500      " number of recently opened files
let g:ctrlp_max_files           = 0        " do not limit the number of searchable files
let g:ctrlp_use_caching         = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir           = $HOME.'/.cache/ctrlp'
let g:ctrlp_match_window        = 'bottom,order:btt,max:10,results:10'





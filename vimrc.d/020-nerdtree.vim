" ==================================================
" NERDTree
" ==================================================

let g:NERDTreeIgnore = [
      \ '\.rbc$', '\~$', '\.db$', '\.sqlite$',
      \ '\.pyc$', '\.pyo$','__pycache__',
      \ '\.o', '\.a', '\~$', '\.swo$', '\.swp$',
      \ '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$',
      \ '.jsc', 'node_modules'
      \]
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeDirArrows=1
let g:NERDTreeMinimalUI=0
let g:NERDTreeWinSize = 56
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'

let g:NERDTreeChDirMode = 2
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeAutoCenter = 1
let g:NERDTreeRespectWildIgnore=1

let g:NERDTreeBookmanrs = '~/.vim/.NERDTreeBookmanrs'
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeShowHidden = 1

let g:NERDTreeIndicatorMapCustom = {
    \ 'Modified'  : '✹',
    \ 'Staged'    : '✚',
    \ 'Untracked' : '✭',
    \ 'Renamed'   : '➜',
    \ 'Unmerged'  : '═',
    \ 'Deleted'   : '✖',
    \ 'Dirty'     : '✗',
    \ 'Clean'     : '✔︎',
    \ 'Ignored'   : '☒',
    \ 'Unknown'   : '?'
    \ }

" NerdTree toggle
noremap <F3> :NERDTreeToggle<CR>
inoremap <F3> <Esc>:NERDTreeToggle<CR>

" Close vim if nerdtree is the only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

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
let g:ERDTreeMinimalUI=0
let g:ERDTreeWinSize = 45
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'

let g:ERDTreeChDirMode = 2
let g:ERDTreeShowLineNumbers = 1
let g:ERDTreeAutoCenter = 1
let g:ERDTreeRespectWildIgnore=1

let g:ERDTreeBookmanrs = '~/.vim/.NERDTreeBookmanrs'
let g:ERDTreeShowBookmarks = 1
let g:ERDTreeShowHidden = 1

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

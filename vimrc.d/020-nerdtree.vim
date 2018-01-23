" ==================================================
" NERDTree
" ==================================================

let g:NERDTreeIgnore = [
      \ '\.rbc$', '\~$', '\.db$', '\.sqlite$',
      \ '\.pyc$', '\.pyo$','__pycache__',
      \ '\.o', '\.a', '\~$', '\.swo$', '\.swp$',
      \ '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$',
      \ '.jsc'
      \]
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let NERDTreeDirArrows=1
let NERDTreeMinimalUI=0
let NERDTreeWinSize = 45
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'

let NERDTreeChDirMode = 2
let NERDTreeShowLineNumbers = 1
let NERDTreeAutoCenter = 1
let NERDTreeRespectWildIgnore=1

let NERDTreeBookmanrs = '~/.vim/.NERDTreeBookmanrs'
let NERDTreeShowBookmarks = 1
let NERDTreeShowHidden = 1

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" NerdTree toggle
map <F3> :NERDTreeToggle<CR>
imap <F3> <Esc>:NERDTreeToggle<CR>


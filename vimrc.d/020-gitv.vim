" ===========================================
" Gitv settings
" ===========================================

let g:Gitv_CommitStep = &lines
let g:Gitv_WrapLines = 1
let g:Gitv_TruncateCommitSubjects = 0
let g:Gitv_OpenPreviewOnLaunch = 1
let g:Gitv_PromptToDeleteMergeBranch = 1
let g:Gitv_DoNotMapCtrlKey = 0
let g:Gitv_QuietBisect = 0

nmap <leader>gitv :Gitv --all<cr>
nmap <leader>gitV :Gitv! --all<cr>
vmap <leader>gitV :Gitv! --all<cr>
nmap <leader>gitD :call Gitv_OpenGitCommand("diff --no-color", 'new')<CR>
vmap <leader>gitD :call Gitv_OpenGitCommand("diff --no-color", 'new')<CR>
"nmap <leader>Gitd :call Gitv_OpenGitCommand("diff --no-color --cached", 'vnew')<CR>
"vmap <leader>Gitd :call Gitv_OpenGitCommand("diff --no-color --cached", 'vnew')<CR>



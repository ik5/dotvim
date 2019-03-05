" ===========================================
" Gitv settings
" ===========================================

if  has('Gitv')
  let g:Gitv_CommitStep = &lines
  let g:Gitv_WrapLines = 1
  let g:Gitv_TruncateCommitSubjects = 0
  let g:Gitv_OpenPreviewOnLaunch = 1
  let g:Gitv_PromptToDeleteMergeBranch = 1
  let g:Gitv_DoNotMapCtrlKey = 0
  let g:Gitv_QuietBisect = 0

  nnoremap <leader>gitv :Gitv --all<cr>
  vnoremap <leader>gitv :Gitv --all<cr>
  nnoremap <leader>gitV :Gitv! --all<cr>
  vnoremap <leader>gitV :Gitv! --all<cr>
  nnoremap <leader>gitD :call Gitv_OpenGitCommand("diff --no-color", 'new')<CR>
  vnoremap <leader>gitD :call Gitv_OpenGitCommand("diff --no-color", 'new')<CR>
  "nnoremap <leader>Gitd :call Gitv_OpenGitCommand("diff --no-color --cached", 'vnew')<CR>
  "vnoremap <leader>Gitd :call Gitv_OpenGitCommand("diff --no-color --cached", 'vnew')<CR>
endif



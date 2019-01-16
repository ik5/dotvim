" ==================================================
" Disable python-mode rope completion (using Jedi)
" Disable folding
" ==================================================
let g:pymode_rope_completion = 0
let g:pymode_folding = 0
let g:pymode_trim_whitespaces = 1

" ==================================================
" jedi-vim use splits instead of tabs
" ==================================================
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = 'right'

" use my default settings, not pymode default settings
let g:pymode_options = 0

" python v2 by default
" let g:pymode_python = 'python'
let g:pymode_python = 'python3'

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

" Enable PEP8 identation
let g:pymode_indent = 1

" Detect virtualenv
let g:pymode_virtualenv = 1

" Allow syntastic to do the linting, but show on the side, what type of lint happened
let g:pymode_lint = 1
let g:pymode_lint_on_write = 0
let g:pymode_lint_signs = 1
let g:pymode_lint_message = 0

" Enable rope
let g:pymode_rope = 0
let g:appendArtifactFix = 0
" Auto complete (ctrl-space)

let g:pymode_rope_goto_definition_cmd = 'new'

" Enable all synax highlights
let g:pymode_syntax_all = 1



let g:neoformat_try_formatprg = 1
let g:neoformat_basic_format_align = 1 " Enable alignment
let g:neoformat_basic_format_retab = 1 " Enable tab to spaces conversion
let g:neoformat_basic_format_trim = 1 " Enable trimmming of trailing whitespace
let g:neoformat_verbose = 0

let g:neoformat_python_autopep8 = {
      \ 'exe': 'autopep8',
      \ 'args': ['-s 4', '-E'],
      \ 'replace': 1,
      \ 'stdin': 1,
      \ 'no_append': 1
      \ }
let g:neoformat_enabled_python = ['autopep8']



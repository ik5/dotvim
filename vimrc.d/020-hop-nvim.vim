if !has('nvim')
  finish
endif

lua << EOF
require'hop'.setup()
EOF

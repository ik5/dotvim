if !has('nvim')
  finish
endif

lua <<EOF
require('spellsitter').setup {}
EOF

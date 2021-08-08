if !has('nvim')
  finish
endif

lua <<EOF
require('nvim-ts-autotag').setup({
  autotag = {
    enable = true,
  }
})
EOF

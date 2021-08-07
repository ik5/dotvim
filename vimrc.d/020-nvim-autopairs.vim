if !has('nvim')
  finish
endif

lua <<EOF
require('nvim-autopairs').setup({
  map_cr = true, --  map <CR> on insert mode
  map_complete = true, -- it will auto insert `(` after select function or method item
  auto_select = false,  -- auto select first item
})
EOF

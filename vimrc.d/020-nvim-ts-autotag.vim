if !has('nvim')
  finish
endif

lua <<EOF
require('nvim-ts-autotag').setup({
autotag = {
enable = true,
filetype = {
  'html',
  'javascript',
  'javascriptreact',
  'typescriptreact',
  'svelte',
  'vue',
  'erb',
  'xml',
  'typescript',
  },
}
})
EOF

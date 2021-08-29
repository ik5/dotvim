" if !has('nvim')
  finish
" endif

lua <<EOF
require('vacuumline').setup({
theme = require('vacuumline.theme.one-dark'),
separator = {
  segment = {
    left = '',
    right = ''
    },
  section = {
    left = '',
    right = ''
    }
  },
color = {
  foreground = {line = '#98971a', even = '#282828', odd = '#282828'},
  background = {line = '#282828', even = '#b16286', odd = '#98971a'},
  },
segment = {
  mode = {
    map = {
      n = {label = '  NRML ', background = '#b16286'}, -- NORMAL
      i = {label = '  INST ', background = '#98971a'}, -- INSERT
      c = {label = '  CMD ', background = '#458588'}, -- COMMAND
      v = {label = '  VSL ', background = '#d79921'}, -- VISUAL
      V = {label = '  VSLL ', background = '#fabd2f'}, -- VISUAL LINE
      t = {label = '  TERM ', background = '#d3869b'}, -- TERMINAL
      }
    },
  },
})
EOF

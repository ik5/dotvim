if !has('nvim')
  finish
endif

let g:indent_blankline_char = '|'
let g:indent_blankline_char_list = ['|', '¦', '┆', '┊']
let g:indent_blankline_space_char = ' '
let g:indent_blankline_space_char_blankline = ' '
let g:indent_blankline_char_highlight_list = ['Error', 'Function']
let g:indent_blankline_space_char_blankline_highlight_list = ['Error', 'Function']
let g:indent_blankline_use_treesitter = v:true
let g:indent_blankline_indent_level = 4
let g:indent_blankline_show_first_indent_level = v:false
let g:indent_blankline_show_trailing_blankline_indent = v:false
let g:indent_blankline_show_end_of_line = v:true
let g:indent_blankline_show_foldtext = v:false
let g:indent_blankline_show_current_context = v:true
let g:indent_blankline_filetype_exclude = ['help']
let g:indent_blankline_buftype_exclude = ['terminal', 'help', 'NvimTree', '__vista__']
let g:indent_blankline_strict_tabs = v:true

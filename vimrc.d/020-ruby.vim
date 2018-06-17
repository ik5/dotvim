let g:rubycomplete_buffer_loading=1                 " do not execute code for evaluating
let g:rubycomplete_classes_in_global = 1            " evaluate classes and objects
let g:rubycomplete_rails = 1                        " detect rails and add support for it
let g:ruby_operators = 1                            " highlight operators
let g:ruby_space_errors = 1                         " Whitespace errors highlight
let g:ruby_spellcheck_strings = 1                   " spellcheck a string
let g:rubycomplete_load_gemfile = 1                 " parse gemfile
let g:rubycomplete_use_bundler = 1                  " use Gemfile of bundler
let g:ruby_indent_access_modifier_style = 'outdent' " indetation type
let g:ruby_indent_block_style = 'do'                " indent of commands after do
let g:ruby_indent_assignment_style = 'hanging'      " Assignment indent style \"hanging\" :
let g:ruby_operators = 1                            " operator like methods in different colors
let g:ruby_space_errors = 1                         " whitespace errors highlighted
let g:ruby_fold = 1                                 " enable fold
let g:ruby_foldable_groups = 'ALL'                  " foldable blocks

augroup Ruby
  au FileType ruby,rspec noremap <leader>rbt :call RunCurrentSpecFile()<CR>
  au FileType ruby,rspec noremap <leader>rbs :call RunNearestSpec()<CR>
  au FileType ruby,rspec noremap <leader>rbl :call RunLastSpec()<CR>
  au FileType ruby,rspec noremap <leader>rba :call RunAllSpecs()<CR>
augroup END

if !isdirectory(expand('$HOME/tmp'))
  call mkdir(expand('$HOME/tmp'))
endif
if !isdirectory(expand('$HOME/tmp/swp'))
  call mkdir(expand('$HOME/tmp/swp'))
endif
if !isdirectory(expand('$HOME/tmp/spell'))
  call mkdir(expand('$HOME/tmp/spell'))
endif
if !isdirectory(expand('$HOME/tmp/vim_undo'))
  call mkdir(expand('$HOME/tmp/vim_undo'))
endif

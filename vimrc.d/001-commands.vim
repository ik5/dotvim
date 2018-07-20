" sudo saves the file
" (useful for handling the permission-denied error)
command! -nargs=0 Wr exec 'write !sudo tee % > /dev/null'

" Open new terminal
command! -nargs=* HTerm split term:///bin/zsh
command! -nargs=* VTerm vsplit term:///bin/zsh

command! -range=% FormatJSON <line1>,<line2>!python3 -c
      \"import json, sys, collections; print(json.dumps(json.load(sys.stdin,object_pairs_hook=collections.OrderedDict), indent=2))"

command! -nargs=* -range=% GenerateUUID call GenerateUUID()

command! RebaseSquash silent execute '2,$s/^pick/s/|silent! w!|2'

command! CloseOthers tabonly|only

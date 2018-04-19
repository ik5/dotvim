" sudo saves the file
" (useful for handling the permission-denied error)
command! Wr !sudo tee % > /dev/null

" Open new terminal
command! -nargs=* HTerm split term:///bin/zsh
command! -nargs=* VTerm vsplit term:///bin/zsh

command! -range=% FormatJSON <line1>,<line2>!python3 -c
      \"import json, sys, collections; print(json.dumps(json.load(sys.stdin,object_pairs_hook=collections.OrderedDict), indent=2))"

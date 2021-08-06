" sudo saves the file
" (useful for handling the permission-denied error)
command! -nargs=0 Wr exec 'write !sudo tee % > /dev/null'

" Open new terminal
command! -nargs=* HTerm split term:///bin/zsh
command! -nargs=* VTerm vsplit term:///bin/zsh

command! -range=% FormatJSON <line1>,<line2>!python3 -c
      \"import json, sys, collections; print(json.dumps(json.load(sys.stdin,object_pairs_hook=collections.OrderedDict), indent=2, ensure_ascii=False))"

command! -nargs=* -range=% GenerateUUID call GenerateUUID()

command! RebaseSquash silent execute '2,$s/^pick/s/|silent! w!|2'

command! CloseOthers tabonly|only

command! FixDoubleQuotes %s/“\|”/"/g

command! ToUnixFF call UnixFF()

command! -nargs=0 Prettier :CocCommand prettier.formatFile

command! -nargs=0 -range -bar Base64Encode <line1>,<line2>call Base64Encode()
command! -nargs=0 -range -bar Base64Decode <line1>,<line2>call Base64Decode()


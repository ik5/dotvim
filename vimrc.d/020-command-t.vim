
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-p> <Plug>(CommandT)
  imap <D-p> <Plug>(CommandT)
  nmap <D-p> <Plug>(CommandT)
else
  map <c-p> <Plug>(CommandT)
  imap <c-p> <Plug>(CommandT)
  nmap <c-p> <Plug>(CommandT)
endif



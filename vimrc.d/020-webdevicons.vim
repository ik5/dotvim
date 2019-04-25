let g:webdevicons_enable = 1
let g:webdevicons_enable_denite = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 0
let g:webdevicons_conceal_nerdtree_brackets = 0
let g:WebDevIconsUnicodeDecorateFolderNodes = 1 " display directory icon
let g:DevIconsEnableFoldersOpenClose = 1 " open/close directory icon
let g:DevIconsEnableFolderExtensionPatternMatching = 1 " file extension pattern matching
if has('mac') || has('macunix')
  let g:WebDevIconsOS = 'Darwint'
else
  let g:WebDevIconsOS = 'linux'
endif

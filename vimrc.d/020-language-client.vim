" Automatically start language servers.
let g:LanguageClient_autoStart = 0 " disabled for now, until all settings are done

" TODO: Add more languages
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['/usr/lib/node_modules/javascript-typescript-langserver/lib/language-server-stdio.js'],
    \ 'javascript.jsx': ['/usr/lib/node_modules/javascript-typescript-langserver/lib/language-server-stdio.js'],
    \ }

" TODO: Define keymaps 



let g:mucomplete#enable_auto_at_startup = 0

let g:mucomplete#can_complete = {
      \   'default' : {
      \       'dict':  { t -> strlen(&l:dictionary) > 0 },
      \       'file':  { t -> t =~# '/\f*$' },
      \       'omni':  { t -> strlen(&l:omnifunc) > 0 },
      \       'spel':  { t -> &l:spell && !empty(&l:spelllang) },
      \       'tags':  { t -> !empty(tagfiles()) },
      \       'thes':  { t -> strlen(&l:thesaurus) > 0 },
      \       'user':  { t -> strlen(&l:completefunc) > 0 },
      \       'ulti':  { t -> get(g:, 'did_plugin_ultisnips', 0) }
      \   }
\ }

let g:mucomplete_chains = {
    \ 'default' : ['file', 'omni', 'keyn', 'dict']
    \ }

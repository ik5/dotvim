nnoremap <Leader>str :ThesaurusQueryReplaceCurrentWord<CR>
vnoremap <Leader>str y:ThesaurusQueryReplace <C-r>"<CR>

let g:tq_enabled_backends=["yarn_synsets", "openoffice_en", "mthesaur_txt", "thesaurus_com"]
let g:tq_language=['en']
let g:tq_online_backends_timeout = 0.4

let g:matchup_matchparen_enabled = 1
let g:matchup_transmute_enabled = 1
let g:matchup_matchparen_singleton = 1
let g:matchup_matchparen_status_offscreen = 1

let g:matchup_matchparen_timeout = 300
let g:matchup_matchparen_insert_timeout = 60

let g:matchup_matchparen_deferred = 1
let g:matchparen_matchparen_deferred_show_time = 50
let g:matchparen_matchparen_deferred_hide_time = 700

let g:matchup_motion_override_Npercent = 0

let g:matchup_text_obj_linewise_operators = ['d', 'y']


nnoremap <silent> <leader><F5> <plug>(matchup-hi-surround)

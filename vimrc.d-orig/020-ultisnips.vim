" ==================================================
" Ulti snippets
" ==================================================

function! g:UltiSnips_Complete()
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res == 0
    if pumvisible()
      return '\<C-n>'
    else
      call UltiSnips#JumpForwards()
      if g:ulti_jump_forwards_res == 0
        return '\<C-TAB>'
      endif
    endif
  endif
  return ''
endfunction

function! g:UltiSnips_Reverse()
  call UltiSnips#JumpBackwards()
  if g:ulti_jump_backwards_res == 0
    return '\<C-P>'
  endif

  return ''
endfunction


if !exists('g:UltiSnipsJumpForwardTrigger')
  let g:UltiSnipsJumpForwardTrigger = '<c-tab>'
endif

if !exists('g:UltiSnipsJumpBackwardTrigger')
  let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
endif

" au InsertEnter * exec 'inoremap <silent> ' . g:UltiSnipsExpandTrigger . ' <C-R>=g:UltiSnips_Complete()<cr>'
" au InsertEnter * exec 'inoremap <silent> ' . g:UltiSnipsJumpBackwardTrigger . ' <C-R>=g:UltiSnips_Reverse()<cr>'

let g:UltiSnipsEditSplit = 'horizontal'

let g:UltiSnipsExpandTrigger='<c-tab>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

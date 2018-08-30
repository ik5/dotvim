" ==================================================
" Right-to-Left (Hebrew etc) shortcuts
" ==================================================

" toggle direction mapping
" this is useful for logical-order editing
noremap <F9>   :set invrl!<CR>
" do it when in insert mode as well (and return to insert mode)
inoremap <F9> <Esc>:set invrl!<CR>a

" toggle reverse insertion
" this is useful for visual-order editing
noremap <F8>   :set invrevins!<CR>
" do it when in insert mode as well (and return to insert mode)
inoremap <F8> <Esc>:set invrevins!<CR>a

" Map Hebrew layout to English when in a need for a VIM shortcut
:set langmap=AA,BB,CC,DD,EE,FF,GG,HH,II,JJ,KK,LL,MM,NN,OO,PP,QQ,RR,SS,TT,UU,VV,WW,XX,YY,ZZ,שa,נb,בc,גd,קe,כf,עg,יh,ןi,חj,לk,ךl,צm,מn,םo,פp,/q,רr,דs,אt,וu,הv,'w,סx,טy,זz

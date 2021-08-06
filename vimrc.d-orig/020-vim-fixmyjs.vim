
let g:fixmyjs_engine = 'eslint'

" use linting tool installed locally in node_modules folder
let g:fixmyjs_use_local = 1

" Use ctrl+l for linting
au FileType js,jsx,vue noremap <c-l> :Fixmyjs<CR>



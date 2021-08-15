if !executable('deno')
      finish
endif

call ddc#custom#patch_global('sources', [
                  \ 'nvimlsp',
                  \ 'zsh',
                  \ 'around',
                  \ 'buffer',
                  \ 'ultisnips',
                  \ ])
" Change source options
call ddc#custom#patch_global('sourceOptions', {
                  \ '_': {
                    \ 'matchers': ['matcher_head', 'matcher_fuzzy'],
                    \ 'sorters': ['sorter_rank'],
                    \ },
                  \ 'nvimlsp': {'mark': 'lsp', 'forceCompletionPattern': '\.|:|->'},
                  \ 'around': {'matchers': ['matcher_head'], 'mark': 'AROUND'},
                  \ 'ultisnips': {'mark': 'SNIPS'},
                  \ 'necovim': {'mark': 'vim'},
                  \ })

call ddc#custom#patch_global('sourceParams', {
                  \ 'around': {'maxSize': 500},
                  \ 'nvimlsp': {'useIcon': v:true},
                  \ })

call ddc#custom#patch_filetype(
                  \ ['vim', 'toml'], 'sources', ['necovim', 'around'],
                  \ )

call ddc#custom#patch_filetype(
                  \ ['help', 'markdown', 'gitcommit'], 'sources', ['around']
                  \ )

call ddc#custom#patch_filetype(['c', 'cpp'], 'sources', ['around', 'clangd'])
call ddc#custom#patch_filetype(['c', 'cpp'], 'sourceOptions', {
      \ 'clangd': {'mark': 'C'},
      \ })
call ddc#custom#patch_filetype('markdown', 'sourceParams', {
      \ 'around': {'maxSize': 100},
      \ })

call ddc#custom#patch_global('filterParams', {
    \ 'matcher_fuzzy': {'camelcase': v:true},
    \ })

inoremap <silent><expr> <C-l> ddc#complete_common_string()
inoremap <silent><expr> <TAB>
                  \ pumvisible() ? "\<C-n>" :
                  \ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
                  \ "\<TAB>" : ddc#manual_complete()

call ddc#enable()

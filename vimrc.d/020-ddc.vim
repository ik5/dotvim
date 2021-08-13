if !executable('deno')
      finish
endif

call ddc#custom#patch_global('sources', [
                  \ 'nvimlsp',
                  \ 'gatherCandidates',
                  \ 'zsh',
                  \ 'around',
                  \ 'vim',
                  \ 'buffer',
                  \ 'ultisnips',
                  \ 'matcher_fuzzy'
                  \ ])
" Change source options
call ddc#custom#patch_global('sourceOptions', {
                  \ '_': {'matchers': ['nvimlsp', 'matcher_head', 'matcher_fuzzy']},
                  \ 'nvimlsp': {'mark': 'lsp', 'forceCompletionPattern': '\.|:|->'},
                  \ 'around': {'matchers': ['matcher_head'], 'mark': 'A'},
                  \ 'ultisnips': {'mark': 'US'},
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

inoremap <silent><expr> <C-l> ddc#complete_common_string()
inoremap <silent><expr> <TAB>
                  \ pumvisible() ? "\<C-n>" :
                  \ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
                  \ "\<TAB>" : ddc#manual_complete()

call ddc#enable()

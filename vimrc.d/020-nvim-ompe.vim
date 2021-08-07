if !has('nvim')
  finish
endif

let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.resolve_timeout = 800
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.spell = v:true
let g:compe.source.tags = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true
let g:compe.source.ultisnips = v:true
let g:compe.source.luasnip = v:true
let g:compe.source.emoji = v:true
let g:compe.source.zsh = v:true

lua << EOF
require'lspconfig'.jedi_language_server.setup{}
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.gopls.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.ccls.setup{}
require'lspconfig'.cmake.setup{}
require'lspconfig'.graphql.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.phpactor.setup{}
require'lspconfig'.rls.setup{}
require'lspconfig'.solargraph.setup{}
require'lspconfig'.sorbet.setup{}
require'lspconfig'.sqls.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.vimls.setup{}
require'lspconfig'.vuels.setup{}
require'lspconfig'.yamlls.setup{}
EOF

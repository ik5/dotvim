if !has('nvim')
  finish
endif

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

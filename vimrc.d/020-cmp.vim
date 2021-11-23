if !has('nvim')
  finish
endif

lua<<EOF
local cmp = require'cmp'

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col(".") - 1
    return col == 0 or vim.fn.getline("."):sub(col, col):match("%s") ~= nil
end

cmp.setup {

    formatting = {
        format = function(entry, vim_item)
            -- fancy icons and a name of kind
            vim_item.kind = require("lspkind").presets.default[vim_item.kind] ..
            " " .. vim_item.kind
            -- set a name for each source
            vim_item.menu = ({
                buffer = "[BUF]",
                nvim_lsp = "[LSP]",
                ultisnips = "[SNPT]",
                nvim_lua = "[LUA]",
                cmp_tabnine = "[TAB]",
                look = "[LOOK]",
                path = "[PATH]",
                spell = "[SPELL]",
                calc = "[CALC]",
                emoji = "[EMOJI]",
                rg = "[RG]",
                ts = "[TS]",
                look = "[LOOK]",
                tmux = "[TMUX]"
            })[entry.source.name]
            return vim_item
        end
    },
    mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true
        }),
        ["<Tab>"] = cmp.mapping(function(fallback)
            if vim.fn.pumvisible() == 1 then
                if vim.fn["UltiSnips#CanExpandSnippet"]() == 1 or
                    vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
                    return vim.fn.feedkeys(t(
                    "<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>"))
                end

                vim.fn.feedkeys(t("<C-n>"), "n")
            elseif check_back_space() then
                vim.fn.feedkeys(t("<tab>"), "n")
            else
                fallback()
            end
        end, {"i", "s"}),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if vim.fn.pumvisible() == 1 then
                vim.fn.feedkeys(t("<C-p>"), "n")
            else
                fallback()
            end
        end, {"i", "s"})
    },
    snippet = {expand = function(args) vim.fn["UltiSnips#Anon"](args.body) end},
    sources = {
      {name = 'buffer'}, {name = 'nvim_lsp'}, {name = "ultisnips"},
      {name = "nvim_lua"}, {name = "look"}, {name = "path"},
      {name = "calc"}, {name = "spell"},
      {name = "emoji"},
      {name = "rg", options = { additional_arguments = "-S" } },
      {name = "treesitter"},
      {name = "look", keyword_length=2, options={convert_case=true, loud=true}},
      {name = "tmux", options = {
          all_panes = false,
          label = "[tmux]",
          trigger_characters = { "." },
          trigger_characters_ft = {}
        }
      },
    },
    completion = {
      completeopt = 'menu,menuone,noinsert',
      keyword_length = 2,
      },
    sorting = {
      comparators = {
        cmp.config.compare.offset,
        cmp.config.compare.exact,
        cmp.config.compare.score,
        cmp.config.compare.kind,
        cmp.config.compare.sort_text,
        cmp.config.compare.length,
        cmp.config.compare.order,
        },
      },
    }
EOF

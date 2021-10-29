vim.opt.completeopt = {"menu", "menuone", "noselect"}
vim.opt.shortmess:append "c"

local lspkind = require('lspkind')

lspkind.init({
    with_text = true,
    preset = 'default',
})
local cmp = require'cmp'

cmp.setup{
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  mapping = {
    ['<C-k>'] = cmp.mapping.scroll_docs(-4),
    ['<C-j>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-p>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),


    ["<Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ["<S-Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,
  },

  sources = cmp.config.sources{
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'path'},
    { name = 'buffer' },
  },

  documentation = {
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
  },
  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        buffer = "[buf]",
        nvim_lap = "[LSP]",
        path = "[path]",
        luasnip = "[snip]",
      },
    },
  },

  experimental = {
    native_menu = false,
    ghost_text = true,
  }
}


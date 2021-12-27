vim.opt.completeopt = {"menu", "menuone", "noselect"}
vim.opt.shortmess:append "c"

require("luasnip/loaders/from_vscode").load()


local luasnip = require 'luasnip'
local lspkind = require('lspkind')

local tabnine = require('cmp_tabnine.config')
tabnine:setup({
        max_lines = 1000;
        max_num_results = 20;
        sort = true;
	run_on_every_keystroke = true;
	snippet_placeholder = '..';
})

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
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end,
    ["<S-Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
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
    { name = "cmp_tabnine" },
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
        cmp_tabnine = "[tab9]",
      },
    },
  },

  experimental = {
    native_menu = false,
    ghost_text = true,
  }
}


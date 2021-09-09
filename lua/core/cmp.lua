  local cmp = require'cmp'
  rho_tgtcmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    mapping = {
      ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})
    },
    sources = {
      { name = '...' },
      ...
    }
  })

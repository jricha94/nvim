-- General Setup
require('nvim-autopairs').setup{}
-- Cmp setup
require("nvim-autopairs.completion.cmp").setup({
  map_cr = false, --  map <CR> on insert mode
  map_complete = true, -- it will auto insert `(` (map_char) after select function or method item
  auto_select = true, -- automatically select the first item
  insert = false, -- use insert confirm behavior instead of replaced
  map_char = { -- modifies the function or method delimiter by filetypes
    all = '(',
    tex = '{'
  }
})
require("nvim-treesitter.configs").setup { autopairs = { enable = true } }
vim.api.nvim_set_keymap("i", "<CR>", "v:lua.MPairs.autopairs_cr()", { expr = true, noremap = true })

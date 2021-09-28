require("core.keymaps")
require("core.plugins")
require("core.settings")
require("core.toggleterm")
require("core.barbar")
require("core.lualine")
require("core.treesitter")
require("core.compe")
require("lsp.pyright")
require("core.nvimtree")
require("core.dashboard")
require('neoscroll').setup()
require'lspconfig'.pyright.setup{}
require'alpha'.setup(require'alpha.themes.startify'.opts)
require('gitsigns').setup()
require("nvim-autopairs.completion.compe").setup({
  map_cr = true, --  map <CR> on insert mode
  map_complete = true, -- it will auto insert `(` (map_char) after select function or method item
  auto_select = false,  -- auto select first item
  map_char = { -- modifies the function or method delimiter by filetypes
    all = '(',
    tex = '{'
  }
})


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



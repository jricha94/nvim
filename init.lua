require('pluggins')
require('settings').setup()
require('keymaps').setup()

-- Color Scheme
vim.cmd[[colorscheme material]]
vim.g.material_style = "deep ocean"

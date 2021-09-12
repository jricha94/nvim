local keymap = vim.api.nvim_set_keymap
local opts = {noremap=true, silent=true}
local tree_cb = require'nvim-tree.config'.nvim_tree_callback

keymap('n', '<Leader>n', ':NvimTreeToggle<CR>', opts)

vim.g.nvim_tree_bindings = {
  {key = "s", cb = tree_cb("vsplit")},
  {key = "n", cb = tree_cb("create")}
}



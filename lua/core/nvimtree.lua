local keymap = vim.api.nvim_set_keymap
local opts = {noremap=true, silent=true}
local tree_cb = require'nvim-tree.config'.nvim_tree_callback

keymap('n', '<Leader>n', ':NvimTreeToggle<CR>', opts)

vim.g.nvim_tree_bindings = {
  {key = "s", cb = tree_cb("vsplit")},
  {key = "n", cb = tree_cb("create")}
}

local tree ={}
tree.open = function ()
   require'bufferline.state'.set_offset(31, 'FileTree')
   require'nvim-tree'.find_file(true)
end

tree.close = function ()
   require'bufferline.state'.set_offset(0)
   require'nvim-tree'.close()
end

return tree 

-- Color Scheme (also removes bufferlines)

local M = {}

function M.setup()
  vim.cmd[[colorscheme material]]
  vim.g.material_style = "deep ocean"
  require('material.functions').toggle_eob()
end

return M

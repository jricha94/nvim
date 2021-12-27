-- Color scheme

local scheme = "material"

if scheme == "system76" then
  vim.cmd[[colorscheme system76]]
elseif scheme == "material" then
  vim.cmd[[colorscheme material]]
  vim.g.material_style = "deep ocean"
  require('material.functions').toggle_eob()
end


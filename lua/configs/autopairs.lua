local M = {}

function M.setup()
  require('nvim-autopairs').setup{
    map_cr = true --TODO: Fix this when cmp is added


  }
end

return M

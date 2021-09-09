local o = vim.o

o.mouse = "a"
o.number = true
o.wrap = false
o.hidden = true
o.relativenumber = true
o.tabstop = 2
o.smarttab = true
o.expandtab = true
o.smartindent = true
o.autoindent = true
o.showtabline = 2
o.encoding = "utf-8"
o.fileencoding = "utf-8"
o.termguicolors = true
o.cmdheight = 1
o.backup = false
o.foldmethod = "indent"
o.foldexpr = ""
o.foldlevel = 100
o.cursorline = true
o.shiftwidth = 2
o.updatetime = 300
o.showmode = false
o.splitright = true
o.splitbelow = true

-- Set Material Theme
vim.g.material_style = "deep ocean"
vim.cmd[[colorscheme material]]
-- Turn off '~' at end of files
require('material.functions').toggle_eob()
-- Autopairs
require('nvim-autopairs').setup{}

vim.cmd([[
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END]])

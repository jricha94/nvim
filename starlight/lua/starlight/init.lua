vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "starlight"

local util = require("starlight.util")
Config = require("starlight.config")
C = require("starlight.palette")
local highlights = require("starlight.highlights")
local Treesitter = require("starlight.Treesitter")
local markdown = require("starlight.markdown")
local Whichkey = require("starlight.Whichkey")
local Git = require("starlight.Git")
local LSP = require("starlight.LSP")


local skeletons = {
    highlights, Treesitter, markdown, Whichkey, Git, LSP
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end
--Keybindings

local M = {}

local opts = {noremap = true, silent = true}

local mode_adapters = {
  insert       = "i",
  normal       = "n",
  term         = "t",
  visual       = "v",
  visual_block = "x",
  command      = "c",
}


local keys = {
  insert = {
    ["jk"] = "<Esc>",
    ["kj"] = "<Esc>",
    ["jj"] = "<Esc>",

  },
  normal = {
    ["<Space>"]   = "<NOP>",
    ["<Leader>e"] = "<cmd>NvimTreeToggle<CR>",
    ["<S-h>"] = "<C-w>h",
    ["<S-j>"] = "<C-w>j",
    ["<S-k>"] = "<C-w>k",
    ["<S-l>"] = "<C-w>l",
    ["<C-l>"] = "<cmd>BufferLineCycleNext<CR>",
    ["<C-h>"] = "<cmd>BufferLineCyclePrev<CR>",
  }
}

function M.add_key(mode, k, v)
  vim.api.nvim_set_keymap(mode_adapters[mode], k, v, opts)
end

function M.set_keys()
  for mode, map in pairs(keys) do
    for k, v in pairs(map) do
      vim.api.nvim_set_keymap(mode_adapters[mode], k, v, opts)
    end
  end
end


function M.setup()
  vim.g.mapleader = " "
  M.set_keys()
end








return M

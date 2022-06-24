local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)
  use "nvim-lua/plenary.nvim"  -- Lots of useful lua commands
  use "nvim-lua/popup.nvim"
	use "wbthomason/packer.nvim" -- Let packer manage itself
  use "LunarVim/Colorschemes"  --  Pretty Color Scheme

  -- Completion Pluggins (cmp)
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/cmp-nvim-lsp"

  -- Snippet Engine
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets" -- lots of snippets to use

  -- Pretty icons with Completion
  use "onsails/lspkind.nvim"

  -- LSP Stuff
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- Easy to use language server installer

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  -- Telescope
  use "nvim-telescope/telescope.nvim"

  -- Which-key
  use "folke/which-key.nvim"

  -- Nvim Tree File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
  }

  -- Toggle Term
  use "akinsho/toggleterm.nvim"

  -- Lualine
  use "nvim-lualine/lualine.nvim"

end)

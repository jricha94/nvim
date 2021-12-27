local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- My plugins here
    use "wbthomason/packer.nvim"
    use "kyazdani42/nvim-tree.lua"
    use "kyazdani42/nvim-web-devicons"
    use "marko-cerovac/material.nvim"
    use "nvim-lualine/lualine.nvim"
    use "akinsho/bufferline.nvim"
    use "windwp/nvim-autopairs"
  -- LSP stuff
    use "neovim/nvim-lspconfig"             -- nvim lsp config
    use "tamago324/nlsp-settings.nvim"      -- json configuration for lsp
    use "jose-elias-alvarez/null-ls.nvim"   -- helps setup lsp clients
    use "williamboman/nvim-lsp-installer"   -- help install lsp clients
    use "onsails/lspkind-nvim"
    use "nvim-lua/plenary.nvim"
    use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}


  -- Auto Complete Stuff
    use {
    "hrsh7th/nvim-cmp",
    requires = {
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",
    }
  }

  use "nvim-treesitter/nvim-treesitter"
  use "rafamadriz/friendly-snippets"
  use "akinsho/toggleterm.nvim"




  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

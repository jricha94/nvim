local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manage itself
  use {"wbthomason/packer.nvim"}

  -- Color scheme
  use {"marko-cerovac/material.nvim"}

  -- Toggle Term
  use {"akinsho/toggleterm.nvim"}

  -- Auto pairs
  use {"windwp/nvim-autopairs"}

  -- Used for multiple pluggins
  use {"kyazdani42/nvim-web-devicons"}

  -- Tree for tree use
  use {"kyazdani42/nvim-tree.lua"}

  -- Barbar for better buffers
  use {"romgrk/barbar.nvim"}

  --Lualine for pretty statusline
  use {"hoob3rt/lualine.nvim"}

  --Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ':TSUpdate'
}
  use {"nvim-treesitter/playground"}

  --Lsp stuff
  use {"neovim/nvim-lspconfig"}
  use {"kabouzeid/nvim-lspinstall"}

  --cmp completion
  use {
  "hrsh7th/nvim-cmp",
  requires = {
    "hrsh7th/vim-vsnip",
    "hrsh7th/cmp-buffer",
  }
}
  -- Auto completion window
  use {"hrsh7th/nvim-compe"}

  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}


  -- Splash page
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.opts)
    end
}

  -- Smoother scrolling
  use {"karb94/neoscroll.nvim"}

  --Gitsigns in code
  use {"lewis6991/gitsigns.nvim"}

end)

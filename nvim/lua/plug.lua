-- [[ plug.lua ]]

return require('packer').startup(function(use)
  -- [[ Plugins Go Here ]]
  use {                                              -- filesystem navigation
    'kyazdani42/nvim-tree.lua',
    requires = 'ryanoasis/vim-devicons'        -- filesystem icons
  }

  -- [[ Theme ]]
  -- color scheme
  use { 'folke/tokyonight.nvim' } 
  -- start screen
  use { 'mhinz/vim-startify' }                      
  -- cursor jump
  use { 'DanilaMihailov/beacon.nvim' }            
  -- statusline
  use {
    'nvim-lualine/lualine.nvim',               
    requires = {'ryanoasis/vim-devicons',
                opt = true}
  }

  -- WhichKey
  use {
    "folke/which-key.nvim",
    config = function()
    require("config.whichkey").setup()
    end,
  }
  
  -- Tabs
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

end)

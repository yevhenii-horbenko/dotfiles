require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- makes background completely transparent
  use 'xiyaowong/nvim-transparent'
  -- autocomplete language server
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  -- statusline
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
  -- syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
    }
end)

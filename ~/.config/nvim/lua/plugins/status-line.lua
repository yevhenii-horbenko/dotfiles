return {
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    init = function()
      require('lualine').setup {
        extensions = { 'nvim-tree' },
        sections = {
          lualine_b = { 'diff', 'diagnostics' },
        },
      }
    end
  }
}

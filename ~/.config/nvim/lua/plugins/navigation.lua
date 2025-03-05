vim.api.nvim_set_keymap('n', '<leader>v', ':NvimTreeFindFile | NvimTreeFocus <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>v', ':NvimTreeFindFile | NvimTreeFocus <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><leader>", "<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>", {noremap = true, silent = true})

return {
  { 
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make'
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    init = function() 
      local telescope = require('telescope')

      telescope.setup {}
      telescope.load_extension('fzf')
    end,
  },
  {
    "nvim-telescope/telescope-frecency.nvim",
    config = function()
      require("telescope").load_extension "frecency"
    end,
  },
  {
    "startup-nvim/startup.nvim",
    dependencies = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    config = function()
      require"startup".setup()
    end
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons', 
    },
    opts = {}
  }
}

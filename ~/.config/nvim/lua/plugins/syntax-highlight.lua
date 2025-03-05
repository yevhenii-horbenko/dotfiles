return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "typescript", "lua", "vim" },
      highlight = { enable = true },
      indent = { enable = true },
      sync_install = false,
    },
  }
}

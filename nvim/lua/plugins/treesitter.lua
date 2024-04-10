return {
  -- If some modules are not being removed, follow the lazyvim startup guide to delete everything including caches, and start again.
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "vimdoc",
        "html",
        "json",
        "lua",
        --"markdown",
        --"markdown_inline",
        "python",
        "query",
        "regex",
        "vim",
        "yaml",
        "terraform",
      },
    },
  },
}

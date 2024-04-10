return {
  -- Somehow treesitter is keeping the markdown modules installed and not removing them, which causes conflicts with pandoc
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

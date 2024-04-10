return {
  "neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          ".github",
          ".gitignore",
        },
        never_show = { ".git" },
      },
    },
  },
}

return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files Telescope" },
    },
    opts = {
      pickers = {
        find_files = {
          hidden = true,
          find_command = { "rg", "--files", "--glob", "!**/.git/*", "-L" },
        },
      },
    },
  },
  -- Fuzzy file finder, for better matching when searching by filename
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
  {
    "nvim-telescope/telescope-symbols.nvim",
  },

  -- Custom ripgrep configuration:

  -- I want to search in hidden/dot files.
  -- "--hidden"
  --
  -- I don't want to search in the `.git` directory.
  -- "--glob")
  -- "!**/.git/*")
  --
  --  I want to follow symbolic links
  -- "-L"
  --
}

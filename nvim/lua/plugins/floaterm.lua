-- vim-floaterm: floating terminal windows
-- Used here to run lazygit in a floating window:
-- https://github.com/voldikss/vim-floaterm#lazygit
--
-- Requires the `lazygit` binary on your PATH (see README pre-requisites).
return {
  {
    "voldikss/vim-floaterm",
    cmd = { "FloatermNew", "FloatermToggle" },
    keys = {
      { "<leader>gl", "<cmd>FloatermNew lazygit<cr>", desc = "Lazygit (floaterm)" },
    },
    init = function()
      -- Make the floating window roomy enough for lazygit's panels.
      vim.g.floaterm_width = 0.9
      vim.g.floaterm_height = 0.9
      vim.g.floaterm_title = "floaterm: $1/$2"
    end,
  },
}

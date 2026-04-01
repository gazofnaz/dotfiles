-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Toggle completion per buffer (works with blink.cmp and nvim-cmp)
local function toggle_completion()
  local enable = vim.b.completion == false
  vim.b.completion = enable or false

  local ok, cmp = pcall(require, "cmp")
  if ok then
    cmp.setup.buffer({ enabled = enable })
  end

  vim.notify(string.format("Completion %s for this buffer", enable and "enabled" or "disabled"))
end

map("n", "<leader>uX", toggle_completion, { desc = "Toggle Completion (buffer)" })

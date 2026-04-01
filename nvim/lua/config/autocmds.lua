-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- disable completion on markdown-like files without affecting other buffers
-- doesn't work, gpt generated
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = { "gitcommit", "markdown", "pandoc" },
--   callback = function()
--     local ok, cmp = pcall(require, "cmp")
--     if ok then
--       cmp.setup.buffer({ enabled = false })
--     end
--   end,
-- })

-- -- wrap and check for spell in text filetypes
-- -- added to disable spelling
-- vim.api.nvim_create_autocmd("FileType", {
--   -- group = augroup("wrap_spell"),
--   pattern = { "gitcommit", "markdown", "pandoc" },
--   callback = function()
--     vim.opt_local.wrap = true
--     vim.opt_local.spell = false
--   end,
-- })

-- vim.api.nvim_create_autocmd("filetype", {
--   -- group = augroup("wrap_spell"),
--   pattern = { "gitcommit", "markdown", "pandoc" },
--   command = "set nospell",
-- })

-- Explicitly disable completion in markdown-like buffers (supports blink.cmp & nvim-cmp)
 vim.api.nvim_create_autocmd("FileType", {
   pattern = { "gitcommit", "markdown", "pandoc" },
   callback = function()
     -- blink.cmp reads this buffer variable
     vim.b.completion = false

     -- nvim-cmp fallback if that engine is active
     local ok, cmp = pcall(require, "cmp")
     if ok then
       cmp.setup.buffer({ enabled = false })
     end
   end,
 })
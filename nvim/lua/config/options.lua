-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Use Telescope as the picker to avoid the newer fzf requirement in fzf-lua
-- should be able to remove this after update fzf to 0.5 or later.
vim.g.lazyvim_picker = "telescope"

vim.opt.relativenumber = false

-- pandoc related

vim.opt.spell = false
vim.opt.foldmethod = "manual"
vim.opt.foldenable = false
vim.g["pandoc#syntax#conceal#urls"] = 1

-- scrolling
vim.opt.relativenumber = false
vim.opt.scrolloff = 8
vim.opt.linebreak = true

--TODO set this dynamically based on current scheme
vim.opt.background = "light"

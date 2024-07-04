-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.lazyvim_picker = "fzf" -- default picker is FZF

vim.opt.shiftwidth = 4 -- 4 spaces as tab
vim.opt.tabstop = 4 -- 4 spaces as tab

-- Line break
vim.opt.breakindent = true
vim.opt.colorcolumn = "121"
vim.opt.linebreak = true
vim.opt.showbreak = "⤷ "
vim.opt.textwidth = 120 -- 120 line length
vim.opt.wrap = true

-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Avoid temporary files when using gopass
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = { "/dev/shm/gopass*" },
	callback = function(ev)
		local lo = vim.opt_local
		lo.swapfile = false
		lo.backup = false
		lo.undofile = false
		lo.shada = ""
	end,
})

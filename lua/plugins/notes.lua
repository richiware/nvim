return {
	"epwalsh/obsidian.nvim",
	version = "v3.9.0", -- recommended, use latest release instead of latest commit
	lazy = true,
	event = {
		"BufReadPre " .. vim.fn.resolve(vim.fn.expand("~/Documentos/notas")) .. "/*",
		"BufNewFile " .. vim.fn.resolve(vim.fn.expand("~/Documentos/notas")) .. "/*",
	},
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",

		-- see below for full list of optional dependencies 👇
	},
	opts = {
		workspaces = {
			{
				name = "personal",
				path = "~/Documentos/notas",
			},
		},

		-- see below for full list of options 👇
	},
}

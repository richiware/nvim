return {
	-- LSP configuration.
	-- - C: ccls
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				ccls = {
					init_options = {
						cache = {
							directory = vim.fn.expand("$HOME/tmp/ccls"),
						},
						clang = {
							excludeArgs = { "-frounding-math" },
						},
						compilationDatabaseDirectory = vim.fn.filereadable("/.dockerenv") ~= 0 and "build" or "",
						index = {
							threads = 0,
						},
					},
				},
			},
		},
	},
}

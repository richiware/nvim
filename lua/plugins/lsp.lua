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
							directory = "~/tmp/ccls",
						},
						clang = {
							excludeArgs = { "-frounding-math" },
						},
						index = {
							threads = 0,
						},
					},
				},
			},
		},
	},
}

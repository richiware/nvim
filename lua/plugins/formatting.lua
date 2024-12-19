return {
	-- Formatting with conform.
	-- - C: uncrustify
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				c = { "uncrustify" },
				cpp = { "uncrustify" },
				markdown = { "mdslw" },
			},
			formatters = {
				shfmt = {
					prepend_args = { "-i", "4", "-ci" },
				},
			},
		},
	},
}

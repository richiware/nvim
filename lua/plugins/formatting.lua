return {
	-- Formatting with conform.
	-- - C: uncrustify
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				c = { "uncrustify" },
				cpp = { "uncrustify" },
				markdown = { "mdslw" }, -- https://github.com/razziel89/mdslw
			},
			formatters = {
				shfmt = {
					prepend_args = { "-i", "4", "-ci" },
				},
			},
		},
	},
}

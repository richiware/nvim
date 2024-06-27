return {
	-- Formatting with conform.
	-- - C: uncrustify
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				c = { "uncrustify" },
			},
		},
	},
}

return {
	-- Disable <leader>cs keymap so it doesn't conflict with outline.nvim
	{
		"folke/trouble.nvim",
		optional = true,
		keys = {
			{ "<leader>cs", false },
		},
	},
}

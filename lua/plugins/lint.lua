local script_file = debug.getinfo(1).short_src:match("(.*/)")
return {
	"mfussenegger/nvim-lint",
	optional = true,
	opts = {
		linters = {
			["markdownlint-cli2"] = {
				args = { "--config", script_file .. ".markdownlint.yaml", "--" },
			},
		},
	},
}

return {
	"mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")
		dap.adapters.gdb = {
			type = "executable",
			command = "gdb",
			args = { "--quiet", "--interpreter=dap" },
		}
		dap.configurations.c = {
			{
				name = "Run executable (GDB)",
				type = "gdb",
				request = "launch",
				program = function()
					local path = vim.fn.input({
						prompt = "Path to executable: ",
						default = vim.fn.getcwd() .. "/",
						completion = "file",
					})

					return (path and path ~= "") and path or dap.ABORT
				end,
				cwd = "${workspaceFolder}",
				stopAtBeginningOfMainSubprogram = true,
			},
		}
		dap.configurations.cpp = {
			{
				name = "Run executable (GDB)",
				type = "gdb",
				request = "launch",
				program = function()
					local path = vim.fn.input({
						prompt = "Path to executable: ",
						default = vim.fn.getcwd() .. "/",
						completion = "file",
					})

					return (path and path ~= "") and path or dap.ABORT
				end,
				cwd = "${workspaceFolder}",
				stopAtBeginningOfMainSubprogram = true,
			},
			{
				name = "Run executable with arguments (GDB)",
				type = "gdb",
				request = "launch",
				program = function()
					local path = vim.fn.input({
						prompt = "Path to executable: ",
						default = vim.fn.getcwd() .. "/",
						completion = "file",
					})

					return (path and path ~= "") and path or dap.ABORT
				end,
				args = function()
					local args_str = vim.fn.input({
						prompt = "Arguments: ",
					})

					return vim.split(args_str, " +")
				end,
				cwd = "${workspaceFolder}",
				stopAtBeginningOfMainSubprogram = true,
			},
			{
				name = "Attach to process (GDB)",
				type = "gdb",
				request = "attach",
				processId = require("dap.utils").pick_process,
			},
		}
	end,
}

return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
			"theHamsta/nvim-dap-virtual-text",
			"jay-babu/mason-nvim-dap.nvim",
			"nvim-telescope/telescope-dap.nvim",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			require("dapui").setup()
			require("nvim-dap-virtual-text").setup()

			require("mason-nvim-dap").setup({
				ensure_installed = {
					"bash",
					"codelldb",
					"delve",
					"js",
					"php",
					"python",
				},
				automatic_installation = true,
				handlers = {},
			})

			require("telescope").load_extension("dap")

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint)
			vim.keymap.set("n", "<leader>dB", function()
				dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
			end)
			vim.keymap.set("n", "<leader>dc", dap.continue)
			vim.keymap.set("n", "<leader>di", dap.step_into)
			vim.keymap.set("n", "<leader>do", dap.step_over)
			vim.keymap.set("n", "<leader>dO", dap.step_out)
			vim.keymap.set("n", "<leader>dr", dap.repl.open)
			vim.keymap.set("n", "<leader>dl", dap.run_last)
			vim.keymap.set("n", "<leader>dt", dap.terminate)
			vim.keymap.set("n", "<leader>du", dapui.toggle)
			vim.keymap.set("n", "<leader>df", require("telescope").extensions.dap.configurations)
		end,
	},
}

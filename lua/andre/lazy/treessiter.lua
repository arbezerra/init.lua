return {
	{
		-- Highlight, edit, and navigate code
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		build = ":TSUpdate",
		config = function()
			local treesitter = require("nvim-treesitter")
			local parsers = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html" }
			local installed = treesitter.get_installed()
			local missing = vim.tbl_filter(function(parser)
				return not vim.list_contains(installed, parser)
			end, parsers)

			treesitter.setup({})
			if #missing > 0 then
				treesitter.install(missing)
			end

			vim.api.nvim_create_autocmd("FileType", {
				pattern = { "c", "lua", "vim", "help", "query", "javascript", "html" },
				callback = function()
					pcall(vim.treesitter.start)
				end,
			})
		end,
	},
}

return {
	{
		-- Highlight, edit, and navigate code
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		build = ":TSUpdate",
		config = function()
			local treesitter = require("nvim-treesitter.configs")

			treesitter.setup({
				ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html" },
				sync_install = false,
				highlight = { enable = true },
			})
		end,
	},
}

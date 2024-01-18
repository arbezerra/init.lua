return {
  -- {
  --   'folke/tokyonight.nvim',
  --   opts = {
  --     style = "storm",
  --     transparent = true,
  --     terminal_colors = true,
  --     styles = {
  --       comments = { italic = false },
  --       keywords = { italic = false },
  --       sidebars = "dark",
  --       floats = "dark",
  --     }
  --   },
  -- },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup({
        disable_background = true
      })
      vim.cmd.colorscheme("rose-pine")

      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
  },

}

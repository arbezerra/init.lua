require('lazy').setup({
  -- Lsp Zero
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- Trouble
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      icons = false,
    },
  },

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },
  {'nvim-treesitter/nvim-treesitter-context'},

  -- Harpoon
  {'theprimeagen/harpoon'},

  -- Undo Tree
  {'mbbill/undotree'},

  -- Fugitive
  {'tpope/vim-fugitive'},

  -- Zen
  {'folke/zen-mode.nvim'},
  
  -- Cloak
  {'laytan/cloak.nvim'},

  -- Rose Pine
  { 'rose-pine/neovim', name = 'rose-pine' },
})

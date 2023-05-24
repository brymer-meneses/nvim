return {

  -- themes
	"ThemerCorp/themer.lua",
  "olivercederborg/poimandres.nvim",
  "kvrohit/substrata.nvim",
  "ellisonleao/gruvbox.nvim",
  "sainnhe/gruvbox-material",

  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
      -- configurations go here
    },
  },

  -- smooth scroll
  { "karb94/neoscroll.nvim", opts = {}},

  -- utility functions
  "nvim-lua/plenary.nvim",

  -- autopairs
  { 'windwp/nvim-autopairs', opts = {} },

  -- comment plugin
  { "numToStr/Comment.nvim", opts = {} },

  -- lsp progress indicator
  { 'j-hui/fidget.nvim', opts = {} },

  -- indentation guies
  {
    'lukas-reineke/indent-blankline.nvim',
    opts = {
      show_trailing_blankline_indent = false,
      char = '┊',
    }
  }


}

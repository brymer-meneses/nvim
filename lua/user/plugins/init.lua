return {

  -- themes
	"ThemerCorp/themer.lua",
  "olivercederborg/poimandres.nvim",
  "kvrohit/substrata.nvim",
  "ellisonleao/gruvbox.nvim",
  "sainnhe/gruvbox-material",
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

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

  { 'lervag/vimtex'},

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
    main = "ibl",
    opts = {
      indent = {
        char = '┊',
      },

      whitespace = {
        highlight = {
          "CursorColumn",
          "Whitespace",
        },
        remove_blankline_trail = false,
      },

      scope = {
        enabled = false,
      }
    }
  }


}

return {

  -- themes
	"ThemerCorp/themer.lua",
  "olivercederborg/poimandres.nvim",
  "kvrohit/substrata.nvim",

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

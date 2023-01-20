return {
  -- themes
	"ThemerCorp/themer.lua",
  "olivercederborg/poimandres.nvim",

  -- utility functions
  "nvim-lua/plenary.nvim",

  {
    'windwp/nvim-autopairs',
    config=function ()
      require("nvim-autopairs").setup()
    end
  },

}

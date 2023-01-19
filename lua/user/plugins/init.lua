return {
  -- themes
	"ThemerCorp/themer.lua",
  "olivercederborg/poimandres.nvim",

  "nvim-lua/plenary.nvim",

  {
    "lewis6991/gitsigns.nvim",
    config=function ()
      require("gitsigns").setup()
    end
  },

  {
    'windwp/nvim-autopairs',
    config=function ()
      require("nvim-autopairs").setup()
    end
  },

}

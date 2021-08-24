nvim.colorscheme = "nord"
nvim.plugins = {
	-- better scrolling
	{
		"karb94/neoscroll.nvim",
		opt = false,
		config = function()
			require("neoscroll").setup()
		end,
	},
	{ "lervag/vimtex" },
	{ "JoosepAlviste/nvim-ts-context-commentstring" },
	{ "rafamadriz/friendly-snippets" },
	{
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup({})
		end,
	},
}

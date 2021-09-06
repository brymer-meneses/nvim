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
	{ "JoosepAlviste/nvim-ts-context-commentstring" },
	{ "rafamadriz/friendly-snippets" },
	{
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup({})
		end,
	},
	{
		"lervag/vimtex",
		config = function()
			require("plugins.vimtex")
		end,
	},
	{
		"brymer-meneses/grammar-guard.nvim",
		config = function()
			require("grammar-guard").init()
			require("plugins.grammar_guard")
		end,
	},
}

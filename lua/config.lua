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
	{
		"tamton-aquib/dynamic-cursor.nvim",
		config = function()
			require("dynamic-cursor").setup({
				guicursor = "n-v-c:block-DynamicCursor,i:ver100-DynamicCursor",
			})
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
		ft = "tex",
	},
	{
		"brymer-meneses/grammar-guard.nvim",
		config = function()
			require("grammar-guard").init()
			require("plugins.grammar_guard")
			vim.api.nvim_set_keymap("n", "<c-p>", "<cmd>Telescope neoclip<cr>", {})
		end,
	},

	{ "mfussenegger/nvim-jdtls" },
	{
		"AckslD/nvim-neoclip.lua",
		config = function()
			require("plugins.neoclip")
		end,
	},

	{
		"is0n/fm-nvim",
		config = function()
			require("fm-nvim").setup({})
		end,
	},
}

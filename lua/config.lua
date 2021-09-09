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
	},
	{
		"brymer-meneses/grammar-guard.nvim",
		config = function()
			require("grammar-guard").init()
			require("plugins.grammar_guard")
		end,
	},

	{
		"KeitaNakamura/tex-conceal.vim",
		config = function()
			vim.cmd([[
                set conceallevel=1
                hi Conceal ctermbg=none
            ]])
			vim.g.tex_conceal = "abdmg"
		end,
	},
	{
		"mfussenegger/nvim-jdtls",
		config = function()
			require("plugins.jdtls")
		end,
	},
}

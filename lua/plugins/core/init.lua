return {
	-- bufferline
	{
		"akinsho/bufferline.nvim",
		config = function()
			require("plugins.core.bufferline")
		end,
	},
	-- explorer
	{ "nvim-telescope/telescope-file-browser.nvim" },
	-- dashboard
	{
		"goolord/alpha-nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = function()
			require("plugins.core.dashboard")
		end,
	},
	-- Git Integration
	{
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("plugins.core.gitsigns")
		end,
	},
	-- Terminal
	{
		"akinsho/nvim-toggleterm.lua",
		config = function()
			require("plugins.core.toggleterm")
		end,
	},
	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		requires = {
			"nvim-treesitter/nvim-treesitter-textobjects",
			"p00f/nvim-ts-rainbow",
		},
		run = ":TSUpdate",
		config = function()
			require("plugins.core.treesitter")
		end,
	},
	-- icons
	{ "kyazdani42/nvim-web-devicons" },
	-- completion
	{
		"hrsh7th/nvim-cmp",
		config = function()
			require("plugins.core.cmp")
		end,
		requires = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-path" },
			{ "kdheepak/cmp-latex-symbols" },
			{ "saadparwaiz1/cmp_luasnip" },
			-- fancy icons
			{ "onsails/lspkind-nvim" },
		},
	},
	-- statusline
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("plugins.core.lualine")
		end,
	},
	-- lsp configuration
	{ "neovim/nvim-lspconfig" },
	-- lsp installer
	{ "williamboman/nvim-lsp-installer" },
	{ "jose-elias-alvarez/null-ls.nvim" },
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		config = function()
			require("plugins.core.telescope")
		end,
		requires = {
			{ "nvim-telescope/telescope-media-files.nvim" },
			{ "nvim-lua/plenary.nvim" },
		},
	},
	{
		"ray-x/lsp_signature.nvim",
	},

	{
		"windwp/nvim-autopairs",
		config = function()
			require("plugins.core.autopairs")
		end,
	},
}

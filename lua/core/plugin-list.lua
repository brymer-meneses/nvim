return {
	--package manager
	{ "wbthomason/packer.nvim" },
	-- comment handler
	{
		"b3nj5m1n/kommentary",
		config = function()
			require("core.plugins.kommentary")
		end,
	},
	-- colorscheme
	{
		"brymer-meneses/nord.nvim",
		config = function()
			vim.g.nord_borders = true
			vim.g.nord_contrast = false
			require("core.colorscheme")
		end,
	},
	-- file tree
	{
		"kyazdani42/nvim-tree.lua",
		config = function()
			require("core.plugins.tree")
		end,
	},
	-- completion
	{
		"hrsh7th/nvim-compe",
		config = function()
			require("core.lsp.compe")
		end,
	},
	{
		"glepnir/lspsaga.nvim",
		config = function()
			vim.schedule(function()
				require("core.lsp.saga").init_lsp_saga()
				require("core.lsp.saga").load_saga_colors()
			end)
		end,
	},
	-- lsp
	{
		"kabouzeid/nvim-lspinstall",
		config = function()
			require("core.lsp.utils").reload_on_install()
		end,
	},
	-- statusline
	{
		"glepnir/galaxyline.nvim",
		config = function()
			require("core.plugins.galaxyline")
		end,
	},
	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		config = function()
			require("core.plugins.telescope")
		end,
		requires = {
			{ "nvim-telescope/telescope-media-files.nvim" },
			{ "nvim-lua/popup.nvim" },
			{ "nvim-lua/plenary.nvim" },
		},
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	-- Git integration
	{
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("core.plugins.gitsigns")
		end,
	},
	-- formatting
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("core.lsp.formatting")
		end,
	},

	{ "kyazdani42/nvim-web-devicons" },
	{
		"windwp/nvim-autopairs",
		config = function()
			require("core.plugins.autopairs")
		end,
	},
	{
		"akinsho/nvim-bufferline.lua",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("core.plugins.bufferline")
		end,
	},
	-- toggleterm
	{
		"akinsho/nvim-toggleterm.lua",
		config = function()
			require("core.plugins.toggleterm")
		end,
	},
	-- lspconfig
	{ "neovim/nvim-lspconfig" },
	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			require("core.plugins.treesitter")
		end,
	},
	-- dashboard
	{
		"glepnir/dashboard-nvim",
		config = function()
			require("core.plugins.dashboard")
		end,
	},
}

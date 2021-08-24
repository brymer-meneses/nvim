nvim = {
	lang = {},
	core_plugins = {
		--package manager
		{ "wbthomason/packer.nvim" },
		-- comment handler
		{ "b3nj5m1n/kommentary" },
		-- colorscheme
		{ "brymer-meneses/nord.nvim" },
		-- file tree
		{ "kyazdani42/nvim-tree.lua" },
		-- completion
		{ "hrsh7th/nvim-compe" },
		-- lsp
		{ "kabouzeid/nvim-lspinstall" },
		{ "nvim-lua/popup.nvim" },
		{ "nvim-lua/plenary.nvim" },
		-- statusline
		{ "glepnir/galaxyline.nvim" },
		-- telescope
		{ "nvim-telescope/telescope.nvim" },
		{ "nvim-telescope/telescope-media-files.nvim" },
		{
			"norcalli/nvim-colorizer.lua",
			config = function()
				require("colorizer").setup()
			end,
		},
		-- Git integration
		{ "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } },
		-- formatting
		{ "jose-elias-alvarez/null-ls.nvim" },

		{ "kyazdani42/nvim-web-devicons" },
		{ "windwp/nvim-autopairs" },
		{
			"akinsho/nvim-bufferline.lua",
			requires = "kyazdani42/nvim-web-devicons",
		},
		-- toggleterm
		{ "akinsho/nvim-toggleterm.lua" },
		-- lspconfig
		{ "neovim/nvim-lspconfig" },
		-- treesitter
		{ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
	},
}
CONFIG_PATH = os.getenv("HOME") .. "/.config/nvim"
DATA_PATH = vim.fn.stdpath("data")
CACHE_PATH = vim.fn.stdpath("cache")

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}
return packer.startup(function(use) 
  -- core 
  use "wbthomason/packer.nvim"                -- package manager
  use "nvim-lua/plenary.nvim"                 -- neovim library
  use { "nvim-treesitter/nvim-treesitter",    -- syntax highlighting
		run = ":TSUpdate",
	}

	-- user interface
  use "kyazdani42/nvim-web-devicons"
	use "akinsho/bufferline.nvim"
	use "goolord/alpha-nvim"
	use "ThemerCorp/themer.lua"
  use "nvim-lualine/lualine.nvim"

  -- integrations
  use "nvim-telescope/telescope.nvim"               -- all around grep/search plugin
  use "nvim-telescope/telescope-media-files.nvim"   -- allows to see media files
  use "nvim-telescope/telescope-file-browser.nvim"  -- file browser
  use "akinsho/nvim-toggleterm.lua"                 -- terminal
  use "lewis6991/gitsigns.nvim"                     -- gitsigns
  use "L3MON4D3/LuaSnip"                            -- snippet

  -- lsp
	use "neovim/nvim-lspconfig"                       -- premade lsp configurations
  use "williamboman/nvim-lsp-installer"             -- lsp server installer
  use "jose-elias-alvarez/null-ls.nvim"             -- mainly used for formatting

  -- completion
  use { "hrsh7th/nvim-cmp",
		requires = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-path" },
			{ "kdheepak/cmp-latex-symbols" },
			{ "saadparwaiz1/cmp_luasnip" },
			-- fancy icons
			{ "onsails/lspkind-nvim" },
		},
	}

  -- ease of use
  use "windwp/nvim-autopairs"
  use "numToStr/Comment.nvim"                         -- comment plugin
  use  "JoosepAlviste/nvim-ts-context-commentstring"
  use "lewis6991/impatient.nvim"

  -- file specific plugins
  use "mfussenegger/nvim-jdtls"                       -- java
  use "lervag/vimtex"                                 -- latex

end)

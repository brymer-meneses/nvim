-- Config
require('globals')
require('plugins')
require('colorscheme')
require('settings')
require('autocommands')
require('lsp') 
require('remaps')

-- plugins
require('plugins.telescope')
require('plugins.nvim-tree')
require('plugins.gitsigns')
require('plugins.nvim-compe')
require('plugins.dashboard')
require('plugins.vimtex')
require('plugins.nvim-autopairs')
require('plugins.nvim-bufferline')
require('plugins.nvim-toggleterm')
require('plugins.nvim-treesitter')
require('plugins.kommentary')
require('plugins.formatter')

-- LSP
require('lsp.LaTeX')
require('lsp.Lua')
require('lsp.Python')
require('lsp.LanguageTool')
require('lsp.Vue')
require('lsp.Javascript')
require('lsp.CSS')
require('lsp.C_CPP')
require('lsp.HTML')

-- Neovide Support
require("extensions.neovide")


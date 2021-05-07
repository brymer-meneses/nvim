-- Config
require('plugins.rnvimr')
require('globals')
require('colorscheme')
require('plugins')
require('settings')
require('remaps')
require('autocommands')
require('lsp')

-- plugins
require('plugins.telescope')
require('plugins.nvim-tree')
require('plugins.gitsigns')
require('plugins.nvim-compe')
require('plugins.dashboard')
require('plugins.feline')
require('plugins.vimtex')
require('plugins.NERDCommenter')
require('plugins.nvim-autopairs')
require('plugins.nvim-bufferline')
require('plugins.nvim-toggleterm')
require('plugins.nvim-treesitter')
-- require('plugins.nvim-ts-rainbow')
require('plugins.nabla-nvim')
require('plugins.nvim-colorizer')

-- LSP
require('lsp.LaTeX')
require('lsp.Lua')
require('lsp.Python')
require('lsp.LanguageTool')
require('lsp.Formatter')


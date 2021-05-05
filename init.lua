
-- Config
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

-- LSP
require('lsp.LaTeX')
require('lsp.Lua')
require('lsp.Python')
require('lsp.LanguageTool')


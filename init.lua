

require('globals')
require('colorscheme')
require('plugins')
require('settings')
require('remaps')
require('lsp')

-- plugins
require('plugins.telescope')
require('plugins.nvim-tree')
require('plugins.gitsigns')
require('plugins.nvim-compe')
require('plugins.dashboard')
require('plugins.feline')
require('plugins.vimtex')

-- vim.cmd('source ~/.config/nvim/vimscript/vimtex.vim')
-- vim.cmd('source ~/.config/nvim/vimscript/coc.vim')

-- LSP
require('lsp.LaTeX')
require('lsp.Lua')


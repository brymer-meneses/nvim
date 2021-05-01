

require('plugins')
require('globals')
require('settings')
require('colorscheme')
require('remaps')
require('lsp')

-- plugins
require('plugins/telescope')
require('plugins/nvim-tree')
require('plugins/gitsigns')
require('plugins/lualine')

vim.cmd('source ~/.config/nvim/vimscript/vimtex.vim')
-- vim.cmd('source ~/.config/nvim/vimscript/coc.vim')

-- LSP
require('lsp/LaTeX')


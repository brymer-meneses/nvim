

require('plugins')
require('globals')
require('settings')
require('colorscheme')
require('remaps')

require('plugins/telescope')
require('plugins/file-explorer')
require('plugins/gitsigns')
require('plugins/statusline')

vim.cmd('source ~/.config/nvim/vimscript/vimtex.vim')
vim.cmd('source ~/.config/nvim/vimscript/coc.vim')

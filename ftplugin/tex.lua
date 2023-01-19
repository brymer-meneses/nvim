-- this caused me to mistype my assignments lol
vim.keymap.set("n", "<C-a>", "<NOP>", { noremap = true, silent = true })

vim.opt.conceallevel=0
vim.bo.spelllang="en_us"
vim.bo.shiftwidth=2
vim.bo.tabstop=2
vim.g.vimtex_matchparen_enabled = false
vim.g.vimtex_motion_enabled = false
vim.g.vimtex_syntax_enabled = true
vim.g.vimtex_syntax_conceal_disable = true
vim.g.vimtex_folding_enabled = false

vim.cmd("set nocursorline")

require "user.plugins.vimtex"

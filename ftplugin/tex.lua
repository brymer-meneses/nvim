-- this caused me to mistype my assignments lol
vim.keymap.set("n", "<C-a>", "<NOP>", { noremap = true, silent = true })

vim.opt.conceallevel=1
vim.bo.spelllang="en_us"
vim.bo.shiftwidth=2
vim.bo.tabstop=2

require "user.plugins.vimtex"

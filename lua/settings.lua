

vim.o.mouse = "a"
vim.o.cmdheight = 1
vim.o.showmode = false
vim.o.clipboard = "unnamedplus"
vim.o.conceallevel = 0
vim.o.showtabline = 2

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.o.expandtab = true
vim.o.termguicolors = true
vim.o.number = true
vim.bo.autoindent = true
vim.o.smarttab = true
vim.o.smartcase = true
vim.wo.wrap = false
vim.wo.number = true
vim.wo.relativenumber = true

vim.cmd([[
    augroup CursorLine
      au!
      au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
      au WinLeave * setlocal nocursorline
    augroup END
]])

vim.cmd([[
    syntax on
    set hidden
    ]])

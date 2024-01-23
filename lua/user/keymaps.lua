
-- stylua: ignore start
local opts = { noremap = true, silent = true }

-- Leader Key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<Space>", "<NOP>", opts)

-- Window Navigation
vim.keymap.set("n", "<c-j>", "<C-w>j", opts)
vim.keymap.set("n", "<c-h>", "<C-w>h", opts)
vim.keymap.set("n", "<c-k>", "<C-w>k", opts)
vim.keymap.set("n", "<c-l>", "<C-w>l", opts)

--- Splits
vim.keymap.set("n", "<c-RIGHT>", "<cmd>vsplit<cr>", { noremap = false })                  -- veritical split
vim.keymap.set("n", "<c-DOWN>", "<cmd>split<cr>", { noremap = false })                    -- horizontal split
vim.keymap.set("n", "<c-x>", "<C-w>q", opts)                                              -- delete split

-- Better indentation
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Resize Windows
vim.keymap.set("n", "<A-j>", "<cmd>resize -2<CR>", opts)
vim.keymap.set("n", "<A-k>", "<cmd>resize +2<CR>", opts)
vim.keymap.set("n", "<A-h>", "<cmd>vertical resize -2<CR>", opts)
vim.keymap.set("n", "<A-l>", "<cmd>vertical resize +2<CR>", opts)

-- Better saving
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR>", opts)

-- Better switching to normal mode on terminal
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], opts)

-- Buffer Deletion
vim.keymap.set("n", "<leader>d", "<cmd>bdelete", opts)


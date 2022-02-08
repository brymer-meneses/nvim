vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true, silent = true })

-- Leader Key
vim.g.mapleader = " "

-- Window Navigation
vim.api.nvim_set_keymap("n", "<c-j>", "<C-w>j", { silent = true })
vim.api.nvim_set_keymap("n", "<c-h>", "<C-w>h", { silent = true })
vim.api.nvim_set_keymap("n", "<c-k>", "<C-w>k", { silent = true })
vim.api.nvim_set_keymap("n", "<c-l>", "<C-w>l", { silent = true })

-- Better indenting
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap("x", "K", ":move '<-2<CR>gv-gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "J", ":move '>+1<CR>gv-gv", { noremap = true, silent = true })

-- Resize Windows
vim.cmd([[
  nnoremap <silent> <M-j>  :resize -2<CR>
  nnoremap <silent> <M-k>  :resize +2<CR>
  nnoremap <silent> <M-h>  :vertical resize -2<CR>
  nnoremap <silent> <M-l>  :vertical resize +2<CR>
]])

vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { silent = true })

vim.api.nvim_set_keymap("n", "<leader>n", "<cmd>noh<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Tab>m", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Tab>n", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Tab>b", "<cmd>bd<Cr>", { silent = true })

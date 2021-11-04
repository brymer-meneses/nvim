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

-- Terminal Remaps
vim.cmd([[
    tnoremap <Esc> <C-\><C-n>
    tnoremap <C-c> <C-c>
]])

-- Better saving
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { silent = true })
vim.api.nvim_set_keymap("v", "<C-s>", "<Esc>:w<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Tab>q", ":wq<CR>", { silent = true })
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Tab>Q", ":q!<CR>", { silent = true })

-- Comments
vim.api.nvim_set_keymap("v", "<leader>r", "<Plug>kommentary_visual_default", {})
vim.api.nvim_set_keymap("n", "<leader>r", "<Plug>kommentary_line_default", {})

-- For Neovim Terminal
vim.api.nvim_set_keymap("n", "<C-?>", "<Plug>kommentary_motion_default", {})

vim.api.nvim_set_keymap("i", "<C-v>", "+p", { silent = true })
vim.api.nvim_set_keymap("i", "<C-c>", "<C-c>", { silent = true })
-- Pasting stuff on the terminal
-- vim.cmd([[tnoremap <Ctrl>V <C-\><C-n>+pa]])
-- vim.cmd([[tnoremap <Ctrl>C +y]])

-- For LaTeX
vim.cmd(
	[[tnoremap <A-L> python <(curl -s "https://raw.githubusercontent.com/brymer-meneses/latex-templates/main/install.py") ]]
)

-- Access Dashboard
vim.api.nvim_set_keymap("n", "<leader>d", "<cmd>Dashboard<Cr>", { silent = true })

-- Switching Buffers

vim.api.nvim_set_keymap("n", "<leader>n", "<cmd>noh<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Tab>m", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Tab>n", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Tab>b", "<cmd>bd<Cr>", { silent = true })

vim.api.nvim_set_keymap("n", "<leader>tl", "<cmd>Trouble<cr>", { silent = true, noremap = true })

--Remap for dealing with word wrap
vim.api.nvim_set_keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

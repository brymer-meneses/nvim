vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true, silent = true })

-- Leader Key
vim.g.mapleader = " "

-- Window Navigation
vim.api.nvim_set_keymap("n", "<leader>j", "<C-w>j", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>h", "<C-w>h", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>k", "<C-w>k", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>l", "<C-w>l", { silent = true })

-- Better indenting
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap("x", "K", ":move '<-2<CR>gv-gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "J", ":move '>+1<CR>gv-gv", { noremap = true, silent = true })

-- Resize Windows
vim.cmd([[
  nnoremap <silent> <C-j>  :resize -2<CR>
  nnoremap <silent> <C-k>  :resize +2<CR>
  nnoremap <silent> <C-h>  :vertical resize -2<CR>
  nnoremap <silent> <C-l>  :vertical resize +2<CR>
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

vim.api.nvim_set_keymap(
	"n",
	"<Tab>k",
	"<cmd>lua vim.lsp.diagnostic.goto_next({ popup_opts = { border = 'single' }})<CR>",
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<Tab>j",
	"<cmd>lua vim.lsp.diagnostic.goto_prev({ popup_opts = { border = 'single' }})<CR>",
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<Tab><Tab>",
	"<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = 'single' })<CR>",
	{ noremap = true, silent = true }
)

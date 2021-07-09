vim.api
    .nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})

-- Leader Key
vim.g.mapleader = ' '

-- Window Navigation
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', {silent = true})

-- Better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv',
                        {noremap = true, silent = true})

-- Resize Windows
vim.cmd([[
  nnoremap <silent> <A-j>  :resize -2<CR>
  nnoremap <silent> <A-k>  :resize +2<CR>
  nnoremap <silent> <A-h>  :vertical resize -2<CR>
  nnoremap <silent> <A-l>  :vertical resize +2<CR>
]])

-- Terminal Remaps
vim.cmd([[
    tnoremap <C-[> <C-\><C-n>
    tnoremap <C-{> <Esc>
]])

-- Better saving
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {silent = true})
vim.api.nvim_set_keymap('v', '<C-s>', '<Esc>:w<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<Tab>q', ':wq<CR>', {silent = true})
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<Tab>Q', ':q!<CR>', {silent = true})

-- Comments
-- For Neovide
vim.api.nvim_set_keymap("n", "<C-/>", "<Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("v", "<C-/>", "<Plug>kommentary_visual_default", {})
-- Pasting stuff on the terminal
-- vim.cmd([[tnoremap <C-v> <C-\><C-n>+pa]])
-- vim.cmd([[tnoremap <C-c> +y]])

-- For Neovim Terminal
vim.api.nvim_set_keymap("n", "<C-_>", "<Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("v", "<C-_>", "<Plug>kommentary_visual_default", {})

vim.api.nvim_set_keymap("n", "<C-?>", "<Plug>kommentary_motion_default", {})

vim.api.nvim_set_keymap('i', '<C-v>', '+p', {silent = true})
vim.api.nvim_set_keymap('i', '<C-c>', '<C-c>', {silent = true})

-- For LaTeX
vim.cmd(
    [[tnoremap <A-L> python <(curl -s "https://raw.githubusercontent.com/brymer-meneses/latex-templates/main/install.py") ]])

-- Access Dashboard
vim.api.nvim_set_keymap("n", "<Tab>d", "<cmd>Dashboard<Cr>", {silent = true})

-- Switching Buffers
vim.api.nvim_set_keymap('n', '<Tab>n', ':BufferLineCycleNext<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Tab>m', ':BufferLineCyclePrev<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Tab>b", "<cmd>bd<Cr>", {silent = true})

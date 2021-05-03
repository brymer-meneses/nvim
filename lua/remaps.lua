vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})

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

-- Switching Buffers
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- Resize Windows
vim.cmd([[
  nnoremap <silent> <C-j>  :resize -2<CR>
  nnoremap <silent> <C-k>  :resize +2<CR>
  nnoremap <silent> <C-h>  :vertical resize -2<CR>
  nnoremap <silent> <C-l>  :vertical resize +2<CR>
]])

-- Terminal Remaps
vim.cmd([[
  tnoremap <C-[> <C-\><C-n>
  nnoremap <C-\> :wincmd v<CR>:wincmd l<CR>:terminal<CR>
]])

-- Better saving
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {silent=true})
vim.api.nvim_set_keymap('n', '<Tab>q', ':wq<CR>', {silent=true})
vim.api.nvim_set_keymap('n', '<Tab>Q', ':q!<CR>', {silent=true})

-- Comments
vim.api.nvim_set_keymap('n', '<C-_>', '<Plug>NERDCommenterToggle', {silent=true})
vim.api.nvim_set_keymap('v', '<C-_>', '<Plug>NERDCommenterToggle<CR>gv', {silent=true})

vim.api.nvim_set_keymap('n', '<C-v>', '+p', {silent=true})
vim.api.nvim_set_keymap('n', '<C-c>', '+y', {silent=true})


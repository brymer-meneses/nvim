-- Neovim Tree 
vim.api.nvim_set_keymap('n', '<leader>tt', ':NvimTreeToggle<cr>', {silent = true})
vim.api.nvim_set_keymap('n', '<leader>tr', ':NvimTreeRefresh<cr>', {silent = true})
vim.api.nvim_set_keymap('n', '<leader>tn', ':NvimTreeFindFile<cr>', {silent = true})

vim.g.nvim_tree_indent_markers = 1

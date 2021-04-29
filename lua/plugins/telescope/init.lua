
-- Telescope Fuzzy Finder
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {silent = true})
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', {silent = true})
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', {silent = true})
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope help_tags<cr>', {silent = true})
vim.api.nvim_set_keymap('n', '<leader>fl', '<cmd>Telescope git_files<cr>', {silent = true})

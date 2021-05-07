
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_lsp_diagnostics = 1
vim.g.nvim_tree_root_folder_modifier = ":~:."
vim.cmd("let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ]")

-- Neovim Tree Remaps
vim.api.nvim_set_keymap('n', '<leader>tt', ':NvimTreeToggle<cr>', {silent = true})
vim.api.nvim_set_keymap('n', '<leader>tr', ':NvimTreeRefresh<cr>', {silent = true})
vim.api.nvim_set_keymap('n', '<leader>tn', ':NvimTreeFindFile<cr>', {silent = true})

-- vim.cmd("highlight NvimTreeRootFolder guibg=#eceff4 guifg=#2e3440")


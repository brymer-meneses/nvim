vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_auto_close = 0
vim.g.nvim_tree_lsp_diagnostics = 1
vim.g.nvim_tree_root_folder_modifier = ":~:."
vim.g.nvim_tree_ignore = {'.git', 'node_modules', '.cache'}
vim.g.nvim_tree_update_cwd = 1
vim.cmd("let g:nvim_tree_show_icons = {'git': 0, 'folders': 1, 'files': 1}")

-- Neovim Tree Remaps
vim.api.nvim_set_keymap('n', '<leader>tt', ':NvimTreeToggle<cr>',
                        {silent = true})
vim.api.nvim_set_keymap('n', '<leader>tr', ':NvimTreeRefresh<cr>',
                        {silent = true})
vim.api.nvim_set_keymap('n', '<leader>tn', ':NvimTreeFindFile<cr>',
                        {silent = true})

vim.g.nvim_tree_disable_keybindings = 0
local tree_cb = require'nvim-tree.config'.nvim_tree_callback
vim.g.nvim_tree_bindings = {
    -- default mappings
    ["<CR>"] = tree_cb("edit"),
    ["l"] = tree_cb("edit"),
    ["<2-LeftMouse>"] = tree_cb("edit"),
    ["<2-RightMouse>"] = tree_cb("cd"),
    ["<C-l>"] = tree_cb("cd"),
    ["<C-v>"] = tree_cb("vsplit"),
    ["<C-x>"] = tree_cb("split"),
    ["<C-t>"] = tree_cb("tabnew"),
    ["<"] = tree_cb("prev_sibling"),
    [">"] = tree_cb("next_sibling"),
    ["h"] = tree_cb("close_node"),
    ["<S-CR>"] = tree_cb("close_node"),
    ["<Tab>"] = tree_cb("preview"),
    ["I"] = tree_cb("toggle_ignored"),
    ["H"] = tree_cb("toggle_dotfiles"),
    ["R"] = tree_cb("refresh"),
    ["a"] = tree_cb("create"),
    ["d"] = tree_cb("remove"),
    ["r"] = tree_cb("rename"),
    ["<C-r>"] = tree_cb("full_rename"),
    ["x"] = tree_cb("cut"),
    ["c"] = tree_cb("copy"),
    ["p"] = tree_cb("paste"),
    ["[c"] = tree_cb("prev_git_item"),
    ["]c"] = tree_cb("next_git_item"),
    ["<C-n>"] = tree_cb("dir_up"),
    ["q"] = tree_cb("close")
}


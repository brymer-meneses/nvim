vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_lsp_diagnostics = 1
vim.g.nvim_tree_root_folder_modifier = ":~:."
vim.g.nvim_tree_ignore = {'.git', 'node_modules', '.cache'}
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
    ["<C-m>"] = tree_cb("cd"),
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

--vim.cmd([[
    --highlight NvimTreeSpecialFile gui=bold,underline guifg=#ebcb8b 
    --highlight NvimTreeFolderIcon guifg=#434c5e
    --highlight NvimTreeOpenedFolderName gui=bold,italic guifg=#d8dee9
    --highlight NvimTreeGitNew guifg=#ebcb8b
    --highlight NvimTreeGitRenamed guifg=#d08770
    --highlight NvimTreeGitDirty guifg=#ebcb8b
    --highlight NvimTreeFolderName guifg=#d8dee9
    --highlight NvimTreeGitDeleted guifg=#bf616a
    --highlight NvimTreeRootFolder guifg=#434c5e
--]])

-- Change directory upon entering a folder
local M = {}

require'nvim-tree.events'.on_nvim_tree_ready(
    function() vim.g.nvim_tree_ready = 1 end)

function M.update_cwd()
    if vim.g.nvim_tree_ready == 1 then
        local view = require 'nvim-tree.view'
        local lib = require 'nvim-tree.lib'
        if view.win_open() then lib.change_dir(vim.fn.getcwd()) end
    end
end

vim.api.nvim_exec([[
  augroup NvimTreeConfig
    au!
    au DirChanged * lua NvimTreeConfig.update_cwd()
  augroup END
  ]], false)

_G.NvimTreeConfig = M
return M


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

-- vim.cmd("highlight NvimTreeRootFolder guibg=#eceff4 guifg=#2e3440")
vim.cmd([[
    highlight NvimTreeSpecialFile gui=bold,underline guifg=#ebcb8b 
    highlight NvimTreeFolderIcon guifg=#434c5e
    highlight NvimTreeOpenedFolderName gui=bold,italic guifg=#d8dee9
    highlight NvimTreeGitNew guifg=#ebcb8b
    highlight NvimTreeGitRenamed guifg=#d08770
    highlight NvimTreeGitDirty guifg=#ebcb8b
    highlight NvimTreeFolderName guifg=#d8dee9
    highlight NvimTreeGitDeleted guifg=#bf616a
    highlight NvimTreeRootFolder guifg=#b48ead
]])

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


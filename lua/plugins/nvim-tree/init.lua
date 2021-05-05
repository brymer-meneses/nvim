
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_lsp_diagnostics = 1
vim.cmd("let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ]")

-- Neovim Tree Remaps
vim.api.nvim_set_keymap('n', '<leader>tt', ':NvimTreeToggle<cr>', {silent = true})
vim.api.nvim_set_keymap('n', '<leader>tr', ':NvimTreeRefresh<cr>', {silent = true})
vim.api.nvim_set_keymap('n', '<leader>tn', ':NvimTreeFindFile<cr>', {silent = true})

-- Show media files (Can't get it to work though)
require('telescope').load_extension('media_files')
require('telescope').setup {
    extensions = {
        media_files = {
            filetypes = {"png", "jpg", "pdf", "jpeg"}
        }
    }
}

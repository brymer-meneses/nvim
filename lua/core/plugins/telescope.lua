-- Telescope Fuzzy Finder
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>',
                        {silent = true})
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>',
                        {silent = true})
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>',
                        {silent = true})
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope help_tags<cr>',
                        {silent = true})
vim.api.nvim_set_keymap('n', '<leader>fl', '<cmd>Telescope git_files<cr>',
                        {silent = true})
vim.api.nvim_set_keymap('n', '<leader>fm', '<cmd>Telescope media_files<cr>',
                        {silent = true})

local actions = require('telescope.actions')

require('telescope').setup {
    extensions = {
        media_files = {
            filetypes = {"png", "jpg", "pdf", "jpeg"},
            find_cmd = "rg"
        },
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true
        }
    }
}
require('telescope').load_extension('media_files')

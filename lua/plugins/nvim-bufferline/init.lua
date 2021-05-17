
require('bufferline').setup{
    options = {
        separator_syle = "thin",
        offsets = {{filetype = "NvimTree", text = " File Explorer", text_align = "center"}},
        diagnostics = "nvim_lsp"
    },
    highlights = {
        --background = {
            --guibg = "#3b4252"
        --},
        fill = {
            --guibg = "#3b4252"
        }
    }
}

-- Switching Buffers
vim.api.nvim_set_keymap('n', '<S-n>', ':BufferLineCycleNext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-m>', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})







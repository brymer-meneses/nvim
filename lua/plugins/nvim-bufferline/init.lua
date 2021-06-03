require('bufferline').setup {
    options = {
        separator_syle = "thin",
        offsets = {
            {
                filetype = "NvimTree",
                text = " File Explorer",
                text_align = "center"
            }
        },
        diagnostics = "nvim_lsp"
    },
    highlights = {
        -- background = {
        -- guibg = "#3b4252"
        -- },
        fill = {
            -- guibg = "#3b4252"
        }
    }
}


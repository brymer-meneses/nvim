
require'lspconfig'.texlab.setup{
    cmd = {DATA_PATH .. "/lspinstall/latex/texlab"},
    on_attach = require'lsp'.common_on_attach,
    settings = {
        texlab = {
            --[[ build = {
                isContinuous = true,
            }, ]]
            chktex = {
                onEdit = true,
                onOpenAndSave = false,
            },
            --[[ formatterLineLength = 100,
            forwardSearch = {
                executable = "zathura",
            } ]]
        }
    }
}

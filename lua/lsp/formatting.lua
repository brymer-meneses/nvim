local formatter = require("null-ls").builtins.formatting

local null_ls = require("null-ls")

null_ls.setup({
    debug = false,
    sources = {
        formatter.stylua,
        formatter.prettierd,
        formatter.black,
        formatter.rustfmt,
    },
    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
            augroup END
            ]])
        end
    end,
})

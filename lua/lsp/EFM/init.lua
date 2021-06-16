local lua_format =
    "/usr/local/lib/luarocks/rocks-5.4/luaformatter/scm-1/bin/lua-format"
local prettier = "prettier --stdin-filepath"
local latex_indent = "latexindent"
local black = "black"

require"lspconfig".efm.setup {
    init_options = {documentFormatting = true},
    cmd = {DATA_PATH .. "/lspinstall/efm/efm-langserver"},
    filetypes = {
        "lua", "python", "javascriptreact", "javascript", "typescript",
        "typescriptreact", "sh", "html", "css", "json", "yaml", "markdown",
        "vue"
    },
    settings = {
        languages = {
            lua = {{formatCommand = lua_format, formatStdin = true}},
            javascript = {{formatCommand = prettier, formatStdin = true}},
            latex = {{formatCommand = latex_indent, formatStdin = true}},
            python = {{formatCommand = black, formatStdin = true}}
        }
    }
}

vim.api.nvim_set_keymap("n", "<C-f>",
                        "<cmd>lua vim.lsp.buf.formatting_sync(nil, 2000)<Cr>",
                        {silent = false})
vim.cmd [[
    augroup FormatAutogroup
      autocmd!
      autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 100)
      autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
      autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
    augroup END
]]

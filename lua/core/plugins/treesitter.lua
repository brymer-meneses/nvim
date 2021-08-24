require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    ignore_install = {},
    highlight = {enable = true},
    indent = {enable = {"javascriptreact"}},
    autotag = {enable = true},
    matchup = {enable = true},
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
        config = {
            javascript = {
                __default = '// %s',
                jsx_element = '{/* %s */}',
                jsx_fragment = '{/* %s */}',
                jsx_attribute = '// %s',
                comment = '// %s'
            }
        }
    }
}

require'nvim-treesitter.configs'.setup {
    ensure_installed = O.treesitter.ensure_installed,
    ignore_install = O.treesitter.ignore_install,
    highlight = {enable = O.treesitter.highlight.enabled},
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


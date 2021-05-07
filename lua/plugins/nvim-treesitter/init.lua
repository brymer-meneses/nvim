
require'nvim-treesitter.configs'.setup {
    ensure_installed = O.treesitter.ensure_installed,
    ignore_install = O.treesitter.ignore_install,
    highlight = {
        enable = O.treesitter.highlight.enabled
    },
    indent = {enable = {"javascriptreact"}},
    autotag = {enable = true},
}


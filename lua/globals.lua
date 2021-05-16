O = {
    auto_close_tree = 0,
    auto_complete = true,
    colorscheme = 'nord',
    hidden_files = true,
    wrap_lines = false,
    number = true,
    relative_number = true,
    shell = 'bash',

    -- @usage pass a table with your desired languages
    treesitter = {
        ensure_installed = "all",
        ignore_install = {"haskell"},
        highlight = {enabled = true},
        playground = {enabled = true},
        rainbow = {enabled = true}
    },

    language_tool = {language = "en-US", mother_tongue = "en-US"},

    latex = {formatter = "latexindent", autoformat = true},

    python = {
        linter = '',
        -- @usage can be 'yapf', 'black'
        formatter = '',
        autoformat = false,
        isort = false,
        diagnostics = {
            virtual_text = {spacing = 0, prefix = ""},
            signs = true,
            underline = true
        },
        analysis = {
            type_checking = "basic",
            auto_search_paths = true,
            use_library_code_types = true
        }
    },
    dart = {
        sdk_path = '/usr/lib/dart/bin/snapshots/analysis_server.dart.snapshot'
    },
    lua = {
        -- @usage can be 'lua-format'
        formatter = '',
        autoformat = true,
        diagnostics = {
            virtual_text = {spacing = 0, prefix = ""},
            signs = true,
            underline = true
        }
    },
    sh = {
        -- @usage can be 'shellcheck'
        linter = '',
        -- @usage can be 'shfmt'
        formatter = '',
        autoformat = true,
        diagnostics = {
            virtual_text = {spacing = 0, prefix = ""},
            signs = true,
            underline = true
        }
    },
    tsserver = {
        -- @usage can be 'eslint'
        linter = '',
        -- @usage can be 'prettier'
        formatter = '',
        autoformat = true,
        diagnostics = {
            virtual_text = {spacing = 0, prefix = ""},
            signs = true,
            underline = true
        }
    },
    json = {
        -- @usage can be 'prettier'
        formatter = 'prettier',
        autoformat = true,
        diagnostics = {
            virtual_text = {spacing = 0, prefix = ""},
            signs = true,
            underline = true
        }
    },
    tailwindls = {
        filetypes = {
            'html', 'css', 'scss', 'javascript', 'javascriptreact',
            'typescript', 'typescriptreact'
        }
    },
    clang = {
        diagnostics = {
            virtual_text = {spacing = 0, prefix = ""},
            signs = true,
            underline = true
        }
    },
    ruby = {
        diagnostics = {
            virtualtext = {spacing = 0, prefix = ""},
            signs = true,
            underline = true
        },
        filetypes = {'rb', 'erb', 'rakefile'}
    }
    -- css = {formatter = '', autoformat = false, virtual_text = true},
    -- json = {formatter = '', autoformat = false, virtual_text = true}
}

CONFIG_PATH = os.getenv("HOME") .. "/.config/nvim"
DATA_PATH = vim.fn.stdpath('data')
CACHE_PATH = vim.fn.stdpath('cache')

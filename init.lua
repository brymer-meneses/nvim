-- Config
require("globals")
require("plugins")
require("colorscheme")
require("settings")
require("autocommands")
require("lsp")
require("remaps")

-- plugins
require("plugins.lualine")
require("plugins.telescope")
require("plugins.tree")
require("plugins.gitsigns")
require("plugins.dashboard")
require("plugins.vimtex")
require("plugins.autopairs")
require("plugins.bufferline")
require("plugins.toggleterm")
require("plugins.treesitter")
require("plugins.kommentary")
require("plugins.formatter")

-- Neovide Support
require("lsp").run("lua")
require("extensions.neovide")

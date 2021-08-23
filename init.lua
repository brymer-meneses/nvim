-- Config
require("globals")
require("plugins")
require("colorscheme")
require("settings")
require("autocommands")
require("remaps")
require("lsp").setup()
-- plugins
require("plugins.galaxyline")
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

-- Neovide Support
require("extensions.neovide")

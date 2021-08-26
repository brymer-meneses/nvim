nvim = {
	lang = {},
	core_plugins = require("core.plugin-list"),
}

require("config")
require("core.lib.plugin-loader")

CONFIG_PATH = os.getenv("HOME") .. "/.config/nvim"
DATA_PATH = vim.fn.stdpath("data")
CACHE_PATH = vim.fn.stdpath("cache")

local ls = require("luasnip")

ls.config.set_config({
	-- Tell Luasnip to remember to keep around the last snippet
	history = true,
	-- Update as you type
	updateevents = "TextChanged,TextChangedI",

	-- Autosnippets:
	enable_autosnippets = false,
})

require("snippets.lang.tex")

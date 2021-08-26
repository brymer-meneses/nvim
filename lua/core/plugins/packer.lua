local packer = require("packer")
packer.init({
	git = { clone_timeout = 1000 },
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "single" })
		end,
		prompt_border = "single",
	},
	auto_clean = true,
})
return packer

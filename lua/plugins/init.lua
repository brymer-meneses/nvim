local packer = require("plugins.core.packer")

local auto_sync_packer = require("config").auto_sync_packer

local core = require("plugins.core")
local opts = require("plugins.opt")

packer.startup(function(use)
	for _, plugin in ipairs(core) do
		plugin.opt = false
		use(plugin)
	end

	for _, plugin in ipairs(opts) do
		use(plugin)
	end

	if packer.bootstrap and auto_sync_packer then
		packer.sync()
	end
end)

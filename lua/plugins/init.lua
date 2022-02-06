local packer = require("plugins.core.packer")
local utils = require("utils")

local plugins = {}

local core = require("plugins.core")
local opt = require("plugins.opt")

utils.merge(plugins, core)
utils.merge(plugins, opt)

packer.startup(function(use)
    for _, plugin in ipairs(plugins) do
        use(plugin)
    end
end)



local lsp_config = require "lspconfig"
local handlers = require "user.lsp.handlers"

require("mason-lspconfig").setup_handlers({
    function (server_name)
      local server_config = require "user.lsp.settings" [server_name]

      -- if there is no predefined config then load the default config from nvim-lspconfig
      -- with the handlers
      if server_config == nil then
        lsp_config[server_name].setup(handlers)
        return
      end

      -- handle the case when a function is passed
      if type(server_config) == "function" then
        server_config()
        return
      end

      -- handle the case when a table is passed
      if type(server_config) == "table" then
        local opts = vim.tbl_deep_extend("force", server_config, handlers)
        lsp_config[server_name].setup(opts)
        return
      end

      vim.api.nvim_err_writeln("ERROR(user.lsp): Expected a function or table to be passed for the configuration of " .. server_name .. " got type: " .. type(server_config))
    end,
})

-- setup lsp config
require("user.lsp.setup").setup()


local lsp_config = require "lspconfig"
local handlers = require "user.lsp.handlers"

require("mason-lspconfig").setup_handlers({
    function (server_name)
      local server_config = require "user.lsp.settings" [server_name]

      -- if there is no predefined config then load the default config from nvim-lspconfig
      -- also pass the handlers
      if server_config == nil then
        lsp_config[server_name].setup(handlers)
        return
      end

      -- we can pass a function or a table for the configuration
      if type(server_config) == "function" then
        server_config()
      elseif type(server_config) == "table" then
        local opts = vim.tbl_deep_extend("force", server_config, handlers)
        lsp_config[server_name].setup(opts)
      else
        print("ERROR: expected function or table for lsp setting")
      end
    end,
})

-- setup lsp config
require("user.lsp.setup").setup()

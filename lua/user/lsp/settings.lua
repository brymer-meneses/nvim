
local settings = {}

settings.rust_analyzer = {
   settings = {
    ["rust-analyzer"] = {
      checkOnSave = {
        allTargets = false,
      }
    }
  }
}

settings.lua_ls =  {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      diagnostics = {
        globals = { "vim", "require" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true)
      },
      telemetry = {
        enable = false
      }
    },
  },
}

settings.solang = {
  -- targets can be one of ewasm, generic, sabre, solana, substrate
  cmd = { "solang", "--language-server", "--target", "substrate", "--importpath", "contracts/node_modules/" },
}


return settings

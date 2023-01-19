
local settings = {}

settings.sumneko_lua =  {
    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" },
        },
        workspace = {
          library = {
            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
            [vim.fn.stdpath("config") .. "/lua"] = true,
          },
        },
    },
  },
}

settings.solang = {
  -- targets can be one of ewasm, generic, sabre, solana, substrate
  cmd = { "solang", "--language-server", "--target", "substrate", "--importpath", "contracts/node_modules/" },
}


return settings

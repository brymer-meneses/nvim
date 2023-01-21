return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    'nvim-treesitter/nvim-treesitter-context',
    -- for commenting tsx or jsx files
    'JoosepAlviste/nvim-ts-context-commentstring'
  },
  config = function ()
   require'treesitter-context'.setup{ }
   require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
    ignore_install = { "" }, -- List of parsers to ignore installing
    autopairs = {
      enable = true,
    },
    highlight = {
      enable = true, -- false will disable the whole extension
      disable = { }, -- list of language that will be disabled
      additional_vim_regex_highlighting = false,
    },
    indent = { enable = true, disable = { "yaml" } },
    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
    rainbow = {
      enable = true,
      extended_mode = false,
      colors = {
        -- Colors here
      },
      -- Term colors
      termcolors = {
        -- Term colors here
      },
    },
   }
  end,
}

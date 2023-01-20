return {
    "lewis6991/gitsigns.nvim",
    dependencies = {
       "tpope/vim-fugitive"
    },
    config=function ()
      local gs = require("gitsigns")
      local gsa = require("gitsigns.actions")
      local opts = {silent=true, noremap=true}

      vim.keymap.set("n", "[c", function() gsa.next_hunk() end, opts)
      vim.keymap.set("n", "]c", function() gsa.prev_hunk() end, opts)
      vim.keymap.set("n", "hs", function() gs.stage_hunk() end, opts)
      vim.keymap.set("n", "hr", function() gs.reset_hunk() end, opts)
      vim.keymap.set("n", "hR", function() gs.reset_buffer() end, opts)
      vim.keymap.set("n", "hp", function() gs.preview_hunk() end, opts)
      vim.keymap.set("n", "hS", function() gs.stage_buffer() end, opts)
      vim.keymap.set("n", "hb", function() gs.blame_line(true) end, opts)
      vim.keymap.set("n", "hu", function() gs.undo_stage_hunk() end, opts)
      vim.keymap.set("n", "hU", function() gs.reset_buffer_index() end, opts)
      vim.keymap.set("v", "hs", function() gs.stage_hunk({vim.fn.line("."), vim.fn.line("v")}) end, opts)
      vim.keymap.set("v", "hr", function() gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") }) end, opts)

      require("gitsigns").setup({
        signs = {
          add = { hl = "GitSignsAdd", text = "│", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
          change = { hl = "GitSignsChange", text = "│", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
          delete = { hl = "GitSignsDelete", text = "_", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
          topdelete = { hl = "GitSignsDelete", text = "‾", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
          changedelete = { hl = "GitSignsChange", text = "~", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
        },
        signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
        numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
        linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
        word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
        watch_gitdir = {
          interval = 1000,
          follow_files = true,
        },
        attach_to_untracked = true,
        current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
          delay = 1000,
        },
        current_line_blame_formatter_opts = {
          relative_time = false,
        },
        sign_priority = 6,
        update_debounce = 100,
        status_formatter = nil, -- Use default
        max_file_length = 40000,
        preview_config = {
          -- Options passed to nvim_open_win
          border = "single",
          style = "minimal",
          relative = "cursor",
          row = 0,
          col = 1,
        },
        yadm = {
          enable = false,
        },
      })
    end,
}

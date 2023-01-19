return {
    "lewis6991/gitsigns.nvim",
    dependencies = {
      "tpope/vim-fugitive"
    },
    config=function ()
      require("gitsigns").setup()
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
    end,
}

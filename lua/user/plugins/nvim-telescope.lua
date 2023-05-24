return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-media-files.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim"
  },
  init = function ()
    local telescope = require "telescope"
    local opts = { noremap = true, silent = true }
    vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
    vim.keymap.set("n", "<leader>fl", "<cmd>Telescope live_grep<cr>", opts)
    vim.keymap.set("n", "<leader>fm", "<cmd>Telescope media_files<cr>", opts)
    vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
    vim.keymap.set("n", "<leader>fh", "<cmd>Telescope current_buffer_fuzzy_find fuzzy=false case_mode=ignore_case<cr>", opts)

    telescope.load_extension("media_files")
    telescope.load_extension("file_browser")
  end,
  config = function ()
    local telescope = require "telescope"
    local actions = require("telescope.actions")
    local fb_actions = require("telescope").extensions.file_browser.actions

    telescope.setup({
      extensions = {
        media_files = {
          filetypes = { "png", "jpg", "pdf", "jpeg" },
        },
        file_browser = {
          initial_mode = "normal",
          previewer = false,
          theme = "dropdown",
          -- separate files from folders
          grouped = true,
          mappings = {
            ["i"] = {},
            ["n"] = {
              ["h"] = fb_actions.goto_parent_dir,
              ["<c-h>"] = fb_actions.toggle_hidden,
              ["<c-l>"] = fb_actions.change_cwd,
              ["l"] = actions.select_default,
            },
          },
        },
      },
      pickers = {
        buffers = {
          initial_mode = 'normal',
          previewer = false,
          theme = 'dropdown',
          sort_mru = true,
          ignore_current_buffer=true,
          mappings = {
            n = {
              ["<leader>d"] = actions.delete_buffer
            }
          }
        },
      },
      defaults = {
        mappings = {
          i = {
            ["<C-l>"] = actions.select_default,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-c>"] = actions.close,
            ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
            ["<CR>"] = actions.select_default + actions.center,
          },
          n = {
            ["l"] = actions.select_default,
            ["<C-n>"] = actions.move_selection_next,
            ["<C-p>"] = actions.move_selection_previous,
            ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
          },
        },
        file_ignore_patterns = { "node_modules" }
      },
    })
  end


}

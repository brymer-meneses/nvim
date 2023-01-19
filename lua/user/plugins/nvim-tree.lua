return {
	'nvim-tree/nvim-tree.lua',
	 dependencies = {
	   'nvim-tree/nvim-web-devicons', -- optional, for file icons
	 },
	 tag = 'nightly',
	 config = function()
      -- keymaps
      local opts = { noremap = true, silent = true }
      vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", opts)
      vim.keymap.set("n", "<Tab>b", "<cmd>bd<Cr>", opts)

      local nvim_tree_config = require "nvim-tree.config"
	    local tree_cb = nvim_tree_config.nvim_tree_callback
	    local nvim_tree = require "nvim-tree"

	    nvim_tree.setup {
	    	hijack_directories = {
	    	    enable = false,
	    	},
	    	-- update_to_buf_dir = {
	    	--   enable = false,
	    	-- },
	    	-- disable_netrw = true,
	    	-- hijack_netrw = true,
	    	-- open_on_setup = false,
	    	ignore_ft_on_setup = {
	    	  "startify",
	    	  "dashboard",
	    	  "alpha",
	    	},
	    	-- auto_close = true,
	    	-- open_on_tab = false,
	    	-- hijack_cursor = false,
	    	update_cwd = true,
	    	-- update_to_buf_dir = {
	    	--   enable = true,
	    	--   auto_open = true,
	    	-- },
	    	-- --   error
	    	-- --   info
	    	-- --   question
	    	-- --   warning
	    	-- --   lightbulb
	    	renderer = {
	    	  add_trailing = false,
	    	  group_empty = false,
	    	  highlight_git = false,
	    	  highlight_opened_files = "none",
	    	  root_folder_modifier = ":t",
	    	  indent_markers = {
	    	    enable = true,
	    	    icons = {
	    	      corner = "└ ",
	    	      edge = "│ ",
	    	      none = "  ",
	    	    },
	    	  },
	    	  icons = {
	    	    webdev_colors = true,
	    	    git_placement = "before",
	    	    padding = " ",
	    	    symlink_arrow = " ➛ ",
	    	    show = {
	    	      file = true,
	    	      folder = true,
	    	      folder_arrow = true,
	    	      git = true,
	    	    },
	    	    glyphs = {
	    	      default = "",
	    	      symlink = "",
	    	      folder = {
	    	        default = "",
	    	        open = "",
	    	        empty = "",
	    	        empty_open = "",
	    	        symlink = "",
	    	        symlink_open = "",
	    	      },
	    	      git = {
	    	        unstaged = "",
	    	        staged = "S",
	    	        unmerged = "",
	    	        renamed = "➜",
	    	        untracked = "U",
	    	        deleted = "",
	    	        ignored = "◌",
	    	      },
	    	    },
	    	  },
	    	},
	    	diagnostics = {
	    	  enable = true,
	    	},
	    	update_focused_file = {
	    	  enable = true,
	    	  update_cwd = true,
	    	  ignore_list = {},
	    	},
	    	-- system_open = {
	    	--   cmd = nil,
	    	--   args = {},
	    	-- },
	    	-- filters = {
	    	--   dotfiles = false,
	    	--   custom = {},
	    	-- },
	    	git = {
	    	  enable = true,
	    	  ignore = true,
	    	  timeout = 500,
	    	},
	    	view = {
	    	  width = 30,
	    	  hide_root_folder = false,
	    	  side = "left",
	    	  -- auto_resize = true,
	    	  mappings = {
	    	    custom_only = false,
	    	    list = {
	    	      { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
	    	      { key = "h", cb = tree_cb "close_node" },
	    	      { key = "v", cb = tree_cb "vsplit" },
	    	    },
	    	  },
	    	  number = false,
	    	  relativenumber = false,
	    	},

	    }
	 end
}

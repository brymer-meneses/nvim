return {
  "mfussenegger/nvim-dap",
  dependencies = {
    'theHamsta/nvim-dap-virtual-text',
    "rcarriga/nvim-dap-ui",
    "jay-babu/mason-nvim-dap.nvim",
  },
  enabled=false,
  config = function ()

    require("nvim-dap-virtual-text").setup({})
    require("mason-nvim-dap").setup()

    require("dapui").setup()

    local dap = require("dap")
    local dapui = require("dapui")

    local opts = { noremap = true, silent = true }
    local bin = vim.fn.stdpath('data') .. "/mason/bin/"

    -- icons
    vim.fn.sign_define("DapBreakpoint", {text="", texthl ="LspDiagnosticsSignError", linehl="", numhl=""})
    vim.fn.sign_define("DapStopped", {text="", texthl="LspDiagnosticsSignHint", linehl="", numhl=""})

    -- keymaps
    vim.keymap.set("n", "<leader>S", dap.step_into, opts)
    vim.keymap.set("n", "<leader>s", dap.step_over, opts)

    vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, opts)
    vim.keymap.set("n", "<leader>dc", dap.continue, opts)
    vim.keymap.set("n", "<leader>dt", dap.repl.open, opts)
    vim.keymap.set("n", "<leader>do", dapui.toggle, opts)
    vim.keymap.set("n", "<leader>dr", dapui.open, opts)

    dap.listeners.after.event_initialized["dapui_config"] = dapui.open
    dap.listeners.before.event_terminated["dapui_config"] = dapui.close
    dap.listeners.before.event_exited["dapui_config"] = dapui.close

    dap.adapters.codelldb = {
      type = "server",
      port = "${port}",
      executable = {
        command = bin .. "codelldb",
        args = { "--port", "${port}" },

        -- On windows you may have to uncomment this:
        -- detached = false,
      }
    }

    dap.configurations.cpp = {
      {
        name = 'Launch',
        type = 'codelldb',
        request = 'launch',
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = {},
      },
    }

    dap.configurations.c = dap.configurations.cpp
    dap.configurations.rust = dap.configurations.cpp

  end

}

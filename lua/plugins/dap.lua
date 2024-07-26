-- return {}
return {
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {},
    },
  },
  {
    "mfussenegger/nvim-dap",
    config = function(_, _)
      --require("core.utils").load_mappings("dap")
    end,
  },
}

-- vim.keymap.set('n', '<F5>', function() dap.continue() end)
-- vim.keymap.set('n', '<F9>', function() dap.step_over() end)
-- vim.keymap.set('n', '<F10>', function() dap.step_into() end)
-- vim.keymap.set('n', '<F11>', function() dap.step_out() end)
-- vim.keymap.set('n', '<leader>bp', function() dap.toggle_breakpoint() end)

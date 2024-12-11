return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-lua/popup.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        pickers = {
          find_files = {
            theme = "ivy",
          }
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_ivy({}),
          },
        },
      })
      -- goto neovim config
      vim.keymap.set("n", "<leader>en",
        function()
          require('telescope.builtin').find_files {
            cwd = vim.fn.stdpath("config"),
          }
        end)

      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})
      require("telescope").load_extension("ui-select")
    end,
  },
}

return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-lua/popup.nvim",
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").setup({
        pickers = {
          find_files = {
            theme = "ivy",
          }
        },
        extensions = {
          fzf = {},
          ["ui-select"] = {
            require("telescope.themes").get_ivy({}),
          },
        },
      })
      require('telescope').load_extension('fzf')
      -- goto neovim config
      vim.keymap.set("n", "<leader>en",
        function()
          require('telescope.builtin').find_files {
            cwd = vim.fn.stdpath("config"),
          }
        end)

      -- goto any install neovim plugins
      vim.keymap.set("n", "<leader>ep",
        function()
          require('telescope.builtin').find_files {
            cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy"),
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

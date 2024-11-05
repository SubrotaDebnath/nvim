return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup({
      default_behavior = {
        open_tree = {
          action = 'expand',
          expand_level = 1,
        },
        select_file = {
          action = 'open',
        },
      },
      filesystem = {
        follow_current_file = {
          enabled =true,
        },
        show_hidden = true, -- This line shows hidden files
      },
    })
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
    vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
    vim.keymap.set("n", "<C-b>", "<CMD>Neotree toggle<CR>", {})
  end,
}

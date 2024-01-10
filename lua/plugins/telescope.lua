return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
      require("telescope").load_extension("ui-select")


local TelescopePrompt = {
    TelescopePromptNormal = {
        bg = '#2d3149',
    },
    TelescopePromptBorder = {
        bg = '#2d3149',
    },
    TelescopePromptTitle = {
        fg = '#2d3149',
        bg = '#2d3149',
    },
    TelescopePreviewTitle = {
        fg = '#1F2335',
        bg = '#1F2335',
    },
    TelescopeResultsTitle = {
        fg = '#1F2335',
        bg = '#1F2335',
    },
}

for hl, col in pairs(TelescopePrompt) do
    vim.api.nvim_set_hl(0, hl, col)
end


    end,
  },
}

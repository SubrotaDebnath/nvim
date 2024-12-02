-- return {
--   "nvim-lualine/lualine.nvim",
--   optional = true,
--   opts = function(_, opts)
--     if not vim.g.trouble_lualine then
--       table.insert(opts.sections.lualine_c, {
--         "aerial",
--         sep = " ",     -- separator between symbols
--         sep_icon = "", -- separator between icon and symbol
--
--         -- The number of symbols to render top-down. In order to render only 'N' last
--         -- symbols, negative numbers may be supplied. For instance, 'depth = -1' can
--         -- be used in order to render only current symbol.
--         depth = 5,
--
--         -- When 'dense' mode is on, icons are not rendered near their symbols. Only
--         -- a single icon that represents the kind of current symbol is rendered at
--         -- the beginning of status line.
--         dense = false,
--
--         -- The separator to be used to separate symbols in dense mode.
--         dense_sep = ".",
--
--         -- Color the symbol icons.
--         colored = true,
--       })
--     end
--   end,
-- }
--


-- Status line
return {
  -- https://github.com/nvim-lualine/lualine.nvim
  "nvim-lualine/lualine.nvim",
  dependencies = {
    -- https://github.com/nvim-tree/nvim-web-devicons
    "nvim-tree/nvim-web-devicons",  -- fancy icons
    -- https://github.com/linrongbin16/lsp-progress.nvim
    "linrongbin16/lsp-progress.nvim", -- LSP loading progress
  },
  opts = {
    options = {
      -- For more themes, see https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
      theme = "catppuccin", -- "auto, tokyonight, catppuccin, codedark, nord"
    },
    sections = {
      lualine_c = {
        {
          -- Customize the filename part of lualine to be parent/filename
          "filename",
          file_status = true, -- Displays file status (readonly status, modified status)
          newfile_status = false, -- Display new file status (new file means no write after created)
          path = 4,          -- 0: Just the filename
          -- 1: Relative path
          -- 2: Absolute path
          -- 3: Absolute path, with tilde as the home directory
          -- 4: Filename and parent dir, with tilde as the home directory
          symbols = {
            modified = "[+]", -- Text to show when the file is modified.
            readonly = "[-]", -- Text to show when the file is non-modifiable or readonly.
          },
        },
      },
    },
  },
}



-- return {
--   "nvim-lualine/lualine.nvim",
--   config = function()
--     require("lualine").setup({
--       options = {
--         theme = "catppuccin",
--         -- theme = "dracula",
--       },
--     })
--   end,
-- }

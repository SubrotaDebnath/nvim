return {
  'akinsho/toggleterm.nvim',
  config = function()
    require("toggleterm").setup({
      -- Optional configuration
      size = 12,                -- Adjust the height of the terminal window
      open_mapping = '<c-t>',
      close_on_exit = true,     -- Close the terminal when the process exits
      direction = 'horizontal', -- Open the terminal horizontally
      -- ... other options
    })
  end
}
--return {
-- amongst your other plugins
--[[   {'akinsho/toggleterm.nvim', version = "*", config = true } ]]
--   -- or
--   --[[    { 'akinsho/toggleterm.nvim', version = "*", opts = {} }  ]]
--   "akinsho/toggleterm.nvim",
--   config = function()
--     local config = require("toggleterm")
--     config.setup({
--       -- size can be a number or function which is passed the current terminal
--       size = 20 | function(term)
--         if term.direction == "horizontal" then
--           return 15
--         elseif term.direction == "vertical" then
--           return vim.o.columns * 0.4
--         end
--       end,
--       open_mapping = [[<c-\>]],
--       hide_numbers = true,
--       shade_filetypes = {},
--       shade_terminals = true,
--       shading_factor = '<number>', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
--       start_in_insert = true,
--       insert_mappings = true,      -- whether or not the open mapping applies in insert mode
--       persist_size = true,
--       direction = 'vertical' | 'horizontal' | 'window' | 'float',
--       close_on_exit = true, -- close the terminal window when the process exits
--       shell = vim.o.shell,  -- change the default shell
--       -- This field is only relevant if direction is set to 'float'
--       -- float_opts = {
--       -- The border key is *almost* the same as 'nvim_win_open'
--       -- see :h nvim_win_open for details on borders however
--       -- the 'curved' border is a custom border type
--       -- not natively supported but implemented in this plugin.
--       --  border = 'single' | 'double' | 'shadow' | 'curved' |-- ... other options supported by win open
--       -- width = <value>,
--       -- height = <value>,
--       -- winblend = 3,
--       -- highlights = {
--       --   border = "Normal",
--       --   background = "Normal",
--       -- }
--       -- }
--     })
--   end,
--
-- }

return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        highlight = { enable = true,
		     additional_vim_regex_highlighting = false
		   },
        indent = { enable = true },
	--keybindings = {
      --toggle_query_editor = 'o',
      --toggle_hl_groups = 'i',
      --toggle_injected_languages = 't',
      --toggle_anonymous_nodes = 'a',
      --toggle_language_display = 'I',
      --focus_language = 'f',
      --unfocus_language = 'F',
      --update = 'R',
      --goto_node = '<cr>',
      --show_help = '?',
    --},
      })
    end
  }
}

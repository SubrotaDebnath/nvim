return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
	'nvim-lua/popup.nvim',
	},
  	{
	'nvim-telescope/telescope-media-files.nvim',
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
         media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = {"png", "webp", "jpg", "jpeg", "mp4", "webm", "pdf"},
      -- find command (defaults to `fd`)
      find_cmd = "rg"
    }
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})

			require("telescope").load_extension("ui-select")
			require("telescope").load_extension("media_files")
		end,
	},
}

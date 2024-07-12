return {

	"nvim-lua/popup.nvim",
	"nvim-lua/plenary.nvim",
	"nvim-telescope/telescope.nvim",

	"nvim-telescope/telescope-media-files.nvim",

	config = function()
		require("telescope").setup({
			extensions = {
				media_files = {
					-- filetypes whitelist
					-- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
					filetypes = { "png", "webp", "jpg", "jpeg", "mp4", "webm", "pdf" },
					-- find command (defaults to `fd`)
					--[[ find_cmd = "rg", ]]
					find_cmd = "C-ff",
				},
			},
		})
		require("telescope").load_extension("media")
	end,
}

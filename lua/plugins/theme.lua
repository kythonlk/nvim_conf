return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	opts = {
		transparent_mode = true,
		styles = {
			sidebars = "transparent",
			floats = "transparent",
		},
	},
	config = function(_, opts)
		require("gruvbox").setup(opts)
		vim.cmd("colorscheme gruvbox")
	end,
}

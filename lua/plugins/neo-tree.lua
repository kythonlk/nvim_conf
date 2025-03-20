return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{
			"<leader>e",
			function()
				require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
			end,
			desc = "Toggle NeoTree (Current Directory)",
		},
	},
	opts = {
		filesystem = {
			filtered_items = {
				visible = true,
			},
			follow_current_file = { enabled = true },
		},
		icons = {
			enabled = vim.g.have_nerd_font,
			types = {
				folder = {
					arrow_closed = "",
					arrow_open = "",
				},
			},
		},
		window = {
			mappings = {
				["<space>"] = "toggle_node",
			},
		},
	},
	config = function(_, opts)
		require("neo-tree").setup(opts)
		vim.cmd("highlight NeoTreeFileName guifg=#abb2bf")
	end,
}

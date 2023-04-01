local nvimtree = require("nvim-tree")
local g = vim.g

g.loaded = 1
g.loader_netrwPlugin = 1

nvimtree.setup({
	actions = {
		open_file = {
			window_picker = { enable = false },
		},
	},
	update_focused_file = { enable = true },
})

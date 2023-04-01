local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

local set = vim.keymap.set

set("n", "<leader>a", mark.add_file)
set("n", "<C-e>", ui.toggle_quick_menu)

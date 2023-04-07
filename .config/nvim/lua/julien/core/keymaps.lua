vim.g.mapleader = " "

local set = vim.keymap.set
local cmd = vim.cmd

-- Don't copy single character deletion in clipboard
set("n", "x", '"_x')

-- Tab management
set("n", "<leader>to", ":tabnew<cr>")
set("n", "<leader>tx", ":tabclose<cr>")
set("n", "<leader>th", ":tabp<cr>") -- go to previous tab
set("n", "<leader>tl", ":tabn<cr>") -- go to next tab

-- Move lines up and down
set("n", "<CS-j>", ":m+<cr>==")
set("n", "<CS-k>", ":m-2<cr>==")
set("i", "<CS-j>", "<Esc>:m+<cr>==gi")
set("i", "<CS-k>", "<Esc>:m-2<cr>==gi")
set("v", "<CS-j>", ":m '>+1<cr>gv=gv")
set("v", "<CS-k>", ":m '<-2<cr>gv=gv")

-- Append next line without moving cursor
set("n", "J", "mzJ`z")

-- Paste without overriding clipboard
set("x", "<leader>p", '"_dP')

-- Delete without overriding clipboard
set("n", "<leader>d", '"_d')
set("v", "<leader>d", '"_d')

-- Yank to system clipboard
set("n", "<leader>y", '"+y')
set("v", "<leader>y", '"+y')

-------------
-- PLUGINS --
-------------

-- vim-maximizer
set("n", "<leader>sm", ":MaximizerToggle<cr>")

-- nvim-tree
set("n", "<leader>o", ":NvimTreeToggle<cr>")
set("v", "<leader>o", ":NvimTreeToggle<cr>")

-- telescope
set("n", "<leader>ff", ":Telescope find_files<cr>")
set("n", "<leader>fs", ":Telescope live_grep<cr>")
set("n", "<leader>fc", ":Telescope grep_string<cr>")
set("n", "<leader>fb", ":Telescope buffers<cr>")
set("n", "<C-p>", ":Telescope git_files<cr>")

-- fugitive
set("n", "<leader>gs", cmd.Git)
set("n", "g ", ":Git ")

-- rest.nvim
set("n", "<leader>rq", "<Plug>RestNvim")

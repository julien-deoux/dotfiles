-- Open folder
vim.keymap.set("n", "<leader>o", vim.cmd.Ex)
vim.keymap.set("v", "<leader>o", vim.cmd.Ex)

-- Go to previous buffer
vim.keymap.set("n", "<A-h>", vim.cmd.bprevious)
vim.keymap.set("i", "<A-h>", vim.cmd.bprevious)
vim.keymap.set("v", "<A-h>", vim.cmd.bprevious)
vim.keymap.set("n", "<A-l>", vim.cmd.bnext)
vim.keymap.set("i", "<A-l>", vim.cmd.bnext)
vim.keymap.set("v", "<A-l>", vim.cmd.bnext)

-- Move lines up and down
vim.keymap.set("n", "<A-j>", ":m+<CR>==")
vim.keymap.set("n", "<A-k>", ":m-2<CR>==")
vim.keymap.set("i", "<A-j>", "<Esc>:m+<CR>==gi")
vim.keymap.set("i", "<A-k>", "<Esc>:m-2<CR>==gi")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- Append next line
vim.keymap.set("n", "J", "mzJ`z");

-- Paste without overriding clipboard
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Delete without overriding clipboard
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Copy from vim to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

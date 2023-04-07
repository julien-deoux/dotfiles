local lspconfig = require("lspconfig")

local cmp_nvim_lsp = require("cmp_nvim_lsp")
local typescript = require("typescript")

local set = vim.keymap.set

local on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	set("n", "gf", ":Lspsaga lsp_finder<cr>", opts)
	set("n", "gD", vim.lsp.buf.definition, opts)
	set("n", "gr", vim.lsp.buf.references, opts)
	set("n", "gd", ":Lspsaga peek_definition<cr>", opts)
	set("n", "gi", vim.lsp.buf.implementation, opts)
	set("n", "<leader>ca", ":Lspsaga code_action<cr>", opts)
	set("n", "<leader>rn", ":Lspsaga rename<cr>", opts)
	set("n", "<leader>d", ":Lspsaga show_line_diagnostics<cr>", opts)
	set("n", "<leader>za", ":Lspsaga diagnostic_jump_prev<cr>", opts)
	set("n", "<leader>ze", ":Lspsaga diagnostic_jump_next<cr>", opts)
	set("n", "K", ":Lspsaga hover_doc<cr>", opts)

	if client.name == "tsserver" then
		set("n", "<leader>rf", ":TypescriptRenameFile<cr>")
	end
end

local capabilities = cmp_nvim_lsp.default_capabilities()

lspconfig.html.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig.cssls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig.rust_analyzer.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig.lua_ls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig.pyright.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

typescript.setup({
	server = {
		capabilities = capabilities,
		on_attach = on_attach,
	},
})

local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
  'lua_ls',
  'tsserver',
  'eslint',
  'rust_analyzer',
})

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "<A-a>", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "<A-e>", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "<A-z>", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<AS-a>", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<A-r>", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<AS-r>", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

vim.diagnostic.config({
  virtual_text = {
    source = "if_many",
    prefix = '#',
  },
  severity_sort = true,
  float = {
    source = "if_many",
  },
})

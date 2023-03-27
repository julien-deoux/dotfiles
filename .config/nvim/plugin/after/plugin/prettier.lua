local prettier = require("prettier")

prettier.setup({
  bin = 'prettier',
  filetypes = {
    'css',
    'html',
    'less',
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
  },
})


local opt = vim.opt

-- Line numbers
opt.nu = true
opt.relativenumber = true

-- Indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.smartindent = true

-- Line wrapping
opt.wrap = false

-- Search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- Cursor line
opt.cursorline = true

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace
opt.backspace = "indent,eol,start"

-- Split windows
opt.splitright = true
opt.splitbelow = true

-- Scrolling margin
opt.scrolloff = 8

-- Color columns
opt.colorcolumn = "80"

-- Don't split words with dash (for cw and such)
opt.iskeyword:append("-")

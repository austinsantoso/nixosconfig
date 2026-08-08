vim.o.number = true
vim.o.relativenumber = true
vim.opt.tabstop = 2 -- Number of spaces tabs count for
vim.opt.softtabstop = 2 -- Number of spaces tabs count for
vim.opt.shiftwidth = 2 -- Size of an indent
vim.opt.expandtab = true -- true = Use spaces instead of tabs
vim.opt.autoindent = true -- copy indent from current line when starting a new one
vim.opt.smarttab = true -- copy indent from current line when starting a new one

vim.o.signcolumn = "yes"
vim.o.undofile = true
vim.o.autoread = true
vim.o.laststatus = 3
vim.o.cmdheight = 0

vim.opt.ignorecase = true -- Ignore case when seaching
vim.opt.smartcase = true -- Don't ignore case with capitals
vim.opt.inccommand = "nosplit" -- preview incremental substitute
vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.opt.splitbelow = true -- Put new windows below current
vim.opt.splitright = true -- Put new windows right of current

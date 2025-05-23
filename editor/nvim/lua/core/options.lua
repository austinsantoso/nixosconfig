local opt = vim.opt

-- opt.autowrite = true -- Enable auto write
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.completeopt = "menu,menuone,noselect"
-- opt.conceallevel = 3 -- Hide * markup for bold and italic
opt.confirm = true -- Confirm to save changes before exiting modified buffer

opt.cursorline = true -- Enable highlighting of the current line

--opt.formatoptions = "jcroqlnt" -- tcqj
--opt.grepformat = "%f:%l:%c:%m"
--opt.grepprg = "rg --vimgrep"

opt.ignorecase = true -- Ignore case when seaching
opt.smartcase = true -- Don't ignore case with capitals
opt.inccommand = "nosplit" -- preview incremental substitute
opt.incsearch = true
opt.hlsearch = false

opt.laststatus = 0
opt.list = true -- Show some invisible characters (tabs...
-- opt.mouse = "a" -- Enable mouse mode

opt.number = true -- Print line number
opt.relativenumber = true -- Relative line numbers
--opt.pumblend = 10 -- Popup blend
--opt.pumheight = 10 -- Maximum number of entries in a popup

opt.scrolloff = 5 -- Lines of context
opt.winminwidth = 5 -- Minimum window width
--opt.sidescrolloff = 8 -- Columns of context
--opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
--opt.shiftround = true -- Round indent

--opt.shortmess:append { W = true, I = true, c = true }
opt.showmode = false -- Dont show mode since we have a statusline
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time

--opt.spelllang = { "en" }
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current

opt.tabstop = 2 -- Number of spaces tabs count for
opt.softtabstop = 2 -- Number of spaces tabs count for
opt.shiftwidth = 2 -- Size of an indent
opt.expandtab = true -- true = Use spaces instead of tabs
opt.autoindent = true -- copy indent from current line when starting a new one
opt.smarttab = true -- copy indent from current line when starting a new one

-- opt.smartindent = true -- Insert indents automatically

opt.termguicolors = true -- True color support

opt.timeoutlen = 150
opt.backup = false
opt.swapfile = false
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.wildmode = "longest:full,full" -- Command-line completion mode

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

opt.wrap = true -- Enable line wrap

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0

vim.o.timeout = true
vim.o.timeoutlen = 500

-- vim.cmd[[colorscheme tokyonight]]

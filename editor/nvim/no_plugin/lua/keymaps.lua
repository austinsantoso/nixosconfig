-- Write and quit
vim.keymap.set("n", "<leader>w", ":w<cr>", { silent = true })
vim.keymap.set("n", "<leader>q", ":q<cr>", { silent = true })

-- Redo
vim.keymap.set("n", "U", "<c-r>", { silent = true })

-- Swap between split buffers
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { silent = true, desc = "Move to left split" })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { silent = true, desc = "Move to below split" })
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { silent = true, desc = "Move to above split" })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { silent = true, desc = "Move to right split" })

local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

--Remap space as leader key
-- keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- increment/decrement numbers
-- i don't know why + isn't working
--vim.keymap("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
--vim.keymap("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- Normal --
-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", opts) -- left window
vim.keymap.set("n", "<C-k>", "<C-w>k", opts) -- up window
vim.keymap.set("n", "<C-j>", "<C-w>j", opts) -- down window
vim.keymap.set("n", "<C-l>", "<C-w>l", opts) -- right window

-- Resize with arrows when using multiple windows
vim.keymap.set("n", "<a-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<a-down>", ":resize +2<cr>", opts)
vim.keymap.set("n", "<a-right>", ":vertical resize -2<cr>", opts)
vim.keymap.set("n", "<a-left>", ":vertical resize +2<cr>", opts)

-- navigate buffers
vim.keymap.set("n", "<tab>", "<cmd>tabnext<cr>", opts) -- Next Tab
vim.keymap.set("n", "<s-tab>", "<cmd>tabprevious<cr>", opts) -- Previous tab

-- search / highlight
vim.keymap.set("n", "<leader>h", ":nohlsearch<cr>", opts) -- No highlight search
vim.keymap.set(
	"n",
	"<leader>S",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ noremap = true, silent = false }
)

-- move text up and down
--vim.keymap.set("n", "<a-j>", "<esc>:m .+1<cr>==gi", opts) -- Alt-j
-- vim.keymap.set("n", "<a-k>", "<esc>:m .-2<cr>==gi", opts) -- Alt-k

-- insert --
-- press jk fast to exit insert mode
-- vim.keymap.set("i", "jk", "<esc>", opts) -- Insert mode -> jk -> Normal mode
-- vim.keymap.set("i", "kj", "<esc>", opts) -- Insert mode -> kj -> Normal mode

-- visual --
-- stay in indent mode
vim.keymap.set("v", "<", "<gv", opts) -- Right Indentation
vim.keymap.set("v", ">", ">gv", opts) -- Left Indentation

-- search stays in the middle
-- zz move line to center
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- cycle through quick fix list
vim.keymap.set("n", "<a-j>", ":cnext<CR>", opts)
vim.keymap.set("n", "<a-k>", ":cprev<CR>", opts)

-- cycle through jump list
vim.keymap.set("n", "<leader>i", "<C-i>", opts)
vim.keymap.set("n", "<leader>o", "<C-o>", opts)

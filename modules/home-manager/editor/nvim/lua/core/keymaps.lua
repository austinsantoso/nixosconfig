local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap

--Remap space as leader key
-- keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- increment/decrement numbers
-- i don't know why + isn't working
--keymap("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
--keymap("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- Normal --
-- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- left window
keymap.set("n", "<C-k>", "<C-w>k", opts) -- up window
keymap.set("n", "<C-j>", "<C-w>j", opts) -- down window
keymap.set("n", "<C-l>", "<C-w>l", opts) -- right window

-- Resize with arrows when using multiple windows
keymap.set("n", "<a-Up>", ":resize -2<CR>", opts)
keymap.set("n", "<a-down>", ":resize +2<cr>", opts)
keymap.set("n", "<a-right>", ":vertical resize -2<cr>", opts)
keymap.set("n", "<a-left>", ":vertical resize +2<cr>", opts)

-- navigate buffers
keymap.set("n", "<tab>", "<cmd>tabnext<cr>", opts)       -- Next Tab
keymap.set("n", "<s-tab>", "<cmd>tabprevious<cr>", opts) -- Previous tab

-- search / highlight
keymap.set("n", "<leader>h", ":nohlsearch<cr>", opts) -- No highlight search
keymap.set("n", "<leader>S", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { noremap = true, silent = false })

-- move text up and down
--keymap.set("n", "<a-j>", "<esc>:m .+1<cr>==gi", opts) -- Alt-j
-- keymap.set("n", "<a-k>", "<esc>:m .-2<cr>==gi", opts) -- Alt-k

-- insert --
-- press jk fast to exit insert mode
-- keymap.set("i", "jk", "<esc>", opts) -- Insert mode -> jk -> Normal mode
-- keymap.set("i", "kj", "<esc>", opts) -- Insert mode -> kj -> Normal mode

-- visual --
-- stay in indent mode
keymap.set("v", "<", "<gv", opts) -- Right Indentation
keymap.set("v", ">", ">gv", opts) -- Left Indentation

-- search stays in the middle
-- zz move line to center
keymap.set("n", "n", "nzzzv", opts)
keymap.set("n", "N", "Nzzzv", opts)

-- cycle through quick fix list
keymap.set("n", "<a-j>", ":cnext<CR>", opts)
keymap.set("n", "<a-k>", ":cprev<CR>", opts)

-- cycle through jump list
keymap.set("n", "<leader>i", "<C-i>", opts)
keymap.set("n", "<leader>o", "<C-o>", opts)

-- keymap.set("v", "<a-j>", ":m .+1<cr>==", opts)
-- keymap.set("v", "<a-k>", ":m .-2<cr>==", opts)

-- Visual Block --
-- Move text up and down
--Terminal --
-- keymap.set("x", "J", ":move '>+1<CR>gv-gv", opts) -- Move code block and format
-- keymap.set("x", "K", ":move '<-2<CR>gv-gv", opts) -- Move code block and format
-- keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

--Better terminal navigation
-- keymap.set("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap.set("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap.set("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap.set("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

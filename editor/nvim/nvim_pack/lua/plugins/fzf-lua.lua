
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "Fuzzy find files in cwd" })
vim.keymap.set("n", "<leader>ft", "<cmd>FzfLua live_grep<cr>", { desc = "Find string in cwd" })
vim.keymap.set("n", "<leader>ft", "<cmd>FzfLua grep<cr>", { desc = "Find string in cwd" })
vim.keymap.set("n", "<leader>fm", "<cmd>FzfLua marks<cr>", { desc = "Fuzzy Find Marks list" })
vim.keymap.set("n", "<leader>fj", "<cmd>FzfLua jumplist<cr>", { desc = "Fuzzy Find Jump list" })
vim.keymap.set("n", "<leader>fr", "<cmd>FzfLua registers<cr>", { desc = "Fuzzy find Registers" })
vim.keymap.set("n", "<leader>fk", "<cmd>FzfLua keymaps<cr>", { desc = "Fuzzy find Keymaps" })


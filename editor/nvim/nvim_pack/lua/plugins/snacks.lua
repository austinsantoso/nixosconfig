require("snacks").setup({
  bigfile = { enabled = true },
  dashboard = { enabled = false },
  explorer = { enabled = true },
  indent = { enabled = true },
  input = { enabled = true },
  notifier = {
    enabled = true,
    timeout = 3000,
  },
  picker = { enabled = true },
  quickfile = { enabled = true },
  scope = { enabled = true },
  scroll = { enabled = true },
  statuscolumn = { enabled = true },
  words = { enabled = true },
  styles = {
    notification = {
      -- wo = { wrap = true } -- Wrap notifications
    }
  },
  lazygit = { enabled = false}
})

-- Toggle file tree
vim.keymap.set("n", "<leader>e", "<cmd>lua Snacks.explorer()<CR>", { desc = "File Explorer", })

-- picker
vim.keymap.set("n", "<leader>f?", "<cmd>lua Snacks.picker()<CR>", { desc = "Open Snacks Picker", })

vim.keymap.set("n", "<leader>ff", "<cmd>lua Snacks.picker.files()<CR>", { desc = "Find Files", })

vim.keymap.set("n", "<leader>fg", "<cmd>lua Snacks.picker.grep()<CR>", { desc = "Grep", })

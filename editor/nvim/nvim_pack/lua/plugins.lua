vim.pack.add({
	"https://github.com/folke/which-key.nvim",
	"https://github.com/nvim-tree/nvim-web-devicons", -- for which key
	"https://github.com/nvim-mini/mini.icons", -- which key

	"https://github.com/folke/snacks.nvim",
	"https://github.com/nvim-mini/mini.nvim",
	"https://github.com/nvim-treesitter/nvim-treesitter",

	"https://github.com/akinsho/bufferline.nvim", -- MAYBE migrate to mini
	"https://github.com/nvim-lualine/lualine.nvim", -- MAYBE migrate to mini

	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/mfussenegger/nvim-lint", -- linter
	"https://github.com/stevearc/conform.nvim",

	"https://github.com/saghen/blink.lib",
	"https://github.com/saghen/blink.cmp",
})

require("plugins.bufferline")
require("plugins.lualine")

require("plugins.which-key")
require("plugins.snacks")
require("plugins.mini")
require("plugins.treesitter")

require("plugins.formatter")
require("plugins.linter")
require("plugins.lsp")
require("plugins.completion")

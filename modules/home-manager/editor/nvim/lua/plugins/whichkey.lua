require("which-key").setup({
	plugins = {
		marks = true, -- shows a list of your marks on ' and `
		registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
		spelling = {
			enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
			suggestions = 20, -- how many suggestions should be shown in the list?
		},
		-- the presets plugin, adds help for a bunch of default keybindings in Neovim
		-- No actual key bindings are created
		presets = {
			operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
			motions = true, -- adds help for motions
			text_objects = true, -- help for text objects triggered after entering an operator
			windows = true, -- default bindings on <c-w>
			nav = true, -- misc bindings to work with windows
			z = true, -- bindings for folds, spelling and others prefixed with z
			g = true, -- bindings for prefixed with g
		},
	},
	-- add operators that will trigger motion and text object completion
	-- to enable all native operators, set the preset / operators plugin above
	-- operators = { gc = "Comments" },
	replace = {
		-- override the label used to display some keys. It doesn't effect WK in any other way.
		-- For example:
		-- function(key)
		-- return require("which-key.view").format(key)
		-- end,

		-- { "<space>", "SPC" },
		-- { "<cr>", "RET" },
		-- { "<tab>", "TAB" },
	},
	icons = {
		breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
		separator = "➜", -- symbol used between a key and it's label
		group = "+", -- symbol prepended to a group
	},
	keys = {
		scroll_down = "<c-j>", -- binding to scroll down inside the popup
		scroll_up = "<c-k>", -- binding to scroll up inside the popup
	},
	win = {
		-- don't allow the popup to overlap with the cursor
		no_overlap = true,
		-- position = "bottom", -- bottom, top
		-- width = 1,
		-- height = { min = 4, max = 25 },
		-- col = 0,
		-- row = math.huge,
		border = "rounded", -- none, single, double, shadow
		padding = { 1, 2 }, -- extra window padding [top/bottom, right/left]
		title = true,
		title_pos = "center",
		zindex = 1000,
		-- Additional vim.wo and vim.bo options
		bo = {},
		wo = {
			-- winblend = 10, -- value between 0-100 0 for fully opaque and 100 for fully transparent
		},
	},
	layout = {
		height = { min = 4, max = 25 }, -- min and max height of the columns
		width = { min = 20, max = 50 }, -- min and max width of the columns
		spacing = 3, -- spacing between columns
		align = "left", -- align columns left, center or right
	},
	-- ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
	filter = function(mapping)
		-- example to exclude mappings without a description
		return mapping.desc and mapping.desc ~= ""
		-- return true
	end,
	-- hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
	show_help = true, -- show help message on the command line when the popup is visible
	triggers = {
		{ "<auto>", mode = "nixsotc" },
		{ "a", mode = { "n", "v" } },
		{ "<leader>", mode = { "n", "v" } },
	},
	-- triggers = "auto", -- automatically setup triggers
	-- triggers = {"<leader>"} -- or specify a list manually
	-- triggers_blacklist = {
	-- list of mode / prefixes that should never be hooked by WhichKey
	-- this is mostly relevant for key maps that start with a native binding
	-- most people should not need to change this
	-- i = { "j", "k" },
	-- v = { "j", "k" },
	-- },
})

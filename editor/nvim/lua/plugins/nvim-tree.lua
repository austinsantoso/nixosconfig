local f = function()
  local status_ok, nvim_tree = pcall(require, "nvim-tree")
  if not status_ok then
    print("nvim-tree status ok fail")
    return
  end

  local function my_on_attach(bufnr)
    local api = require("nvim-tree.api")

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set(
      "n",
      "<tab>",
      "<cmd>tabnext<cr>",
      { buffer = bufnr, noremap = true, silent = true, nowait = true }
    ) -- disable tab, tab to switch tab
  end

  nvim_tree.setup({
    update_focused_file = {
      enable = true,
      -- update_cwd = true,
    },
    filters = {
      git_ignored = false,
      dotfiles = false,
    },
    renderer = {
      root_folder_modifier = ":t",
      -- These icons are visible when you install web-devicons
      icons = {
        glyphs = {
          default = "",
          symlink = "",
          folder = {
            arrow_open = "",
            arrow_closed = "",
            default = "",
            open = "",
            empty = "",
            empty_open = "",
            symlink = "",
            symlink_open = "",
          },
          git = {
            unstaged = "",
            staged = "S",
            unmerged = "",
            renamed = "➜",
            untracked = "U",
            deleted = "",
            ignored = "◌",
          },
        },
      },
    },
    diagnostics = {
      enable = true,
      show_on_dirs = true,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      },
    },
    view = {
      -- width = 30,
      side = "left",
      preserve_window_proportions = false,
    },
    on_attach = my_on_attach,
    actions = {
      open_file = {
        resize_window = false,
      },
    },
  })

  -- set keymaps
  local keymap = vim.keymap -- for conciseness

  keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
  keymap.set(
    "n",
    "<leader>ef",
    "<cmd>NvimTreeFindFileToggle<CR>",
    { desc = "Toggle file explorer on current file" }
  ) -- toggle file explorer on current file
  keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
  keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
end

f()

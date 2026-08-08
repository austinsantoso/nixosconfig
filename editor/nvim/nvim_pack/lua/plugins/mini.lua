--- mini surround ---------------------
require("mini.surround").setup()
-- Default Keymaps
-- | `sa` | Add surrounding or Direct with 'saiw' |
-- | `sd` | Delete surrounding |
-- | `sr` | Replace surrounding |
-- | `sf` | Find surrounding (right) |
-- | `sF` | Find surrounding (left) |
-- | `sh` | Highlight surrounding |
-- | `sn` | Update n_lines |
-- | `l` / `n` | as suffix for prev/next |


-- mini completion ----------------
require("mini.completion").setup({
    lsp_completion = {
        auto_setup = true,
    }
})
-- disable completion in snacks.picker
vim.api.nvim_create_autocmd("FileType", {
  pattern = "snacks_picker_input",
  callback = function()
    vim.b.minicompletion_disable = true
  end,
})

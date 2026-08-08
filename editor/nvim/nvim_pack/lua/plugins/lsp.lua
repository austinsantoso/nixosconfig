-- default
-- vim.keymap.set('n', 'gri', vim.lsp.buf.implementation, { desc = "Go to Implementation"})
-- vim.keymap.set('n', 'grt', vim.lsp.buf.type_definition, { desc = "Go to definition"})
-- vim.keymap.set('n', 'grr', vim.lsp.buf.references, { desc = "Go to References"})
-- vim.keymap.set('n', 'grn', vim.lsp.buf.rename, { desc = "Rename"})
-- vim.keymap.set({ 'n', 'v' } 'gra', vim.lsp.buf.code_action, { desc = "Code Action"})
-- vim.keymap.set('n', 'grx', vim.lsp.codelends.run, { desc = "Run CodeLens"})
-- vim.keymap.set('n', 'gO', vim.lsp.buf.document_symbol, { desc = "Document Symbols"})
-- vim.keymap.set('i', '<C-s>', vim.lsp.buf.signature_help, { desc = "Signature help"})
-- vim.keymap.set('n', 'K', vim.lsp.buf.hover , vim.tbl_extend("force", opts, { desc = "Show documentation"}))

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.references, { desc = "Go to definition" })
-- vim.keymap.set("n", "<leader>F", vim.lsp.buf.format, { desc = "Format Local buffer" }) -- use conform
vim.keymap.set("n", "df", vim.diagnostic.open_float, { desc = "Show line diagnostics" })

vim.diagnostic.config({ virtual_text = true })

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend("force", capabilities, require("mini.completion").get_lsp_capabilities())

vim.lsp.config("*", { capabilities = capabilities })

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = { globals = { "vim" } },
		},
	},
})

vim.lsp.enable({
	"lua_ls",
	"gopls",
	"nixd",
	"jdtls",
})

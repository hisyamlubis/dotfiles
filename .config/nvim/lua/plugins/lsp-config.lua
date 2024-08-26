require("mason").setup()

require("mason-lspconfig").setup({

	ensure_installed = { "lua_ls", "marksman", "pyright", "intelephense" },
})

require("cmp").setup({
	sources = {
		{ name = "nvim_lsp" },
	},
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({
	capabilities = capabilities,
})
lspconfig.marksman.setup({
	capabilities = capabilities,
})

lspconfig.pyright.setup({
	capabilities = capabilities,
})
lspconfig.intelephense.setup({
	capabilities = capabilities,
})


vim.lsp.enable("efm")

local languages = require("efmls-configs.defaults").languages()
local ruff = require("efmls-configs.linters.ruff")

languages.python = { ruff }

local efmls_config = {
	filetypes = vim.tbl_keys(languages),
	settings = {
		rootMarkers = { ".git/" },
		languages = languages,
	},
	init_options = {
		documentFormatting = true,
		documentRangeFormatting = true,
	},
}

vim.lsp.config(
	"efm",
	vim.tbl_extend("force", efmls_config, {
		cmd = { "efm-langserver" },
		root_markers = { ".git" },

		-- Pass your custom lsp config below like on_attach and capabilities
		on_attach = on_attach,
		capabilities = capabilities,
	})
)

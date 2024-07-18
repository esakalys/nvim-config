local cmp = require("cmp")
local cmp_format = require("lsp-zero").cmp_format()

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	},
	formatting = cmp_format,
})

local lsp_zero = require("lsp-zero")

require("mason").setup({})
require("mason-lspconfig").setup({
	handlers = {
		lsp_zero.default_setup,
		lua_ls = function()
			require("lspconfig").lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})
		end,
		eslint = function()
			require("lspconfig").eslint.setup({
				settings = {
					packageManager = "pnpm",
				},
			})
		end,
	},
})

local capabilities = vim.tbl_deep_extend("force", vim.lsp.protocol.make_client_capabilities(), {
	workspace = {
		didChangeWatchedFiles = {
			dynamicRegistration = false,
		},
	},
})

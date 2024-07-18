require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		css = { { "prettierd", "prettier" } },
		json = { { "prettierd", "prettier" } },
		html = { { "prettierd", "prettier" } },
		javascript = { { "prettierd", "prettier" } },
		javascriptreact = { { "prettierd", "prettier" } },
		typescript = { { "prettierd", "prettier" } },
		typescriptreact = { { "prettierd", "prettier" } },
		python = { "ruff_fix", "ruff_format" },
		ruby = { "rubocop" },
	},

	format_on_save = {
		timeout_ms = 2000,
		lsp_fallback = true,
	},
})

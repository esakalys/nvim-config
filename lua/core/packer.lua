vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		requires = {
			{ "nvim-lua/plenary.nvim" },
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				run = "make",
			},
		},
	})

	use("stevearc/oil.nvim")
	use("numToStr/Comment.nvim")
	use("folke/ts-comments.nvim")
	use("folke/todo-comments.nvim")

	use("ThePrimeagen/harpoon")
	use({ "catppuccin/nvim", as = "catppuccin" })
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use({
		"kevinhwang91/nvim-ufo",
		requires = "kevinhwang91/promise-async",
	})
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			{ "neovim/nvim-lspconfig" },
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
	})
	use({ "dgagn/diagflow.nvim" })
	use({
		"kdheepak/lazygit.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	use({
		"luckasRanarison/tailwind-tools.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
	})

	use("stevearc/conform.nvim")
	use("saadparwaiz1/cmp_luasnip")
	use("windwp/nvim-autopairs")
	use("rafamadriz/friendly-snippets")
	use("nvim-tree/nvim-web-devicons")
	use({
		"nvim-lualine/lualine.nvim",
		requires = {
			opt = true,
			"meuter/lualine-so-fancy.nvim",
		},
	})
	use("lewis6991/gitsigns.nvim")
end)

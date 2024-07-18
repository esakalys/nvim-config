--- General ---
vim.g.mapleader = " "
vim.keymap.set("i", "jj", "<Esc>")
--- Navigation
vim.keymap.set("n", "L", "$")
vim.keymap.set("n", "H", "0")
vim.keymap.set("v", "L", "$")
vim.keymap.set("v", "H", "0")
--- Switch between open vim tabs
vim.keymap.set("n", "t", "<C-w>w")
--- Go to netrw view
vim.keymap.set("n", "<leader>n", vim.cmd.Oil)
--- Copy filepath to system clipboard
vim.keymap.set("n", "<leader>l", [[:let @* = expand("%")<CR>]])
--- Copy selection to system clipboard
vim.keymap.set("v", "<leader>y", '"*y')

--- Lazygit ---
vim.keymap.set("n", "<leader>gg", vim.cmd.LazyGit)

--- Telescope ---
local builtin = require("telescope.builtin")
--- Search project files
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
--- Text search of project files
vim.keymap.set("n", "<leader>sf", builtin.live_grep, {})
--- Search for string under the cursor
vim.keymap.set("n", "<leader>ss", builtin.grep_string, {})
--- Resume previous search
vim.keymap.set("n", "<leader>rs", builtin.resume, {})

--- Harpoon ---
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>t", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>j", ui.nav_next)
vim.keymap.set("n", "<leader>k", ui.nav_prev)

--- LSP ---
local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({ buffer = bufnr })

	local opts = { buffer = bufnr, remap = true }
	--- Find definition
	vim.keymap.set("n", "fd", function()
		vim.lsp.buf.definition()
	end, opts)
	--- Hover information for symbol under cursor
	vim.keymap.set("n", "K", function()
		vim.lsp.buf.hover()
	end, opts)
	--- Find references
	vim.keymap.set("n", "fr", function()
		vim.lsp.buf.references()
	end, opts)
	--- Rename all references
	vim.keymap.set("n", "<leader>rn", function()
		vim.lsp.buf.rename()
	end, opts)
end)

local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<CR>"] = cmp.mapping.confirm({ select = false }),
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<C-k>"] = cmp.mapping.select_prev_item(),
	}),
})

--- UFO ---
vim.keymap.set("n", "zR", require("ufo").openAllFolds)
vim.keymap.set("n", "zM", require("ufo").closeAllFolds)

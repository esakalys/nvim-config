require("catppuccin").setup({
  transparent_background = true,
  term_colors = true,
  integrations = {
    cmp = true,
    harpoon = true,
    mason = true,
    treesitter = true,
    telescope = {
      enabled = true,
    }
  }
})

vim.cmd.colorscheme "catppuccin"

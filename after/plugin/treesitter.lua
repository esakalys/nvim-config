require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "ruby", "json", "javascript", "html", 'css', "python" },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  incremental_selection = {
    enable = false,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },

  indent = {
    enable = false,
  },

  autotag = {
    enable = true,
  }
}

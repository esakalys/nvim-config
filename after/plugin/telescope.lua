require('telescope').setup {
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		}
	},
	defaults = {
		layout_config = {
			horizontal = {
				width = 0.95,
				height = 0.95,
				preview_width = 0.55,
			}
		},
	},
}

require('telescope').load_extension('fzf')

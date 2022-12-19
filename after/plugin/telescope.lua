local builtin = require('telescope.builtin')
local config = require('telescope.config')
local defaults = config.values

--[[
	Remaps
--]]

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

--[[
	Theme
--]]

-- Diplay file paths like this: file.ext (path/to/file/)
local path_display_func = function(_, path)
	local tail = require("telescope.utils").path_tail(path)
	return string.format("%s (%s)", tail, path)
end

-- Result display configuration
defaults.sorting_strategy = 'ascending'
defaults.path_display = path_display_func

-- Layout configuration
defaults.layout_config = {
	bottom_pane = {
		height = 25,
		preview_cutoff = 120,
		prompt_position = "top"
	},
	center = {
		height = 0.4,
		preview_cutoff = 40,
		prompt_position = "top",
		width = 0.5
	},
	cursor = {
		height = 0.9,
		preview_cutoff = 40,
		width = 0.8
	},
	horizontal = {
		height = 0.9,
		preview_cutoff = 120,
		prompt_position = "top",
		width = 0.8
	},
	vertical = {
		height = 0.9,
		preview_cutoff = 40,
		prompt_position = "bottom",
		width = 0.8
	}
}

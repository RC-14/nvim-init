function ColorMyPencils(color)
	color = color or 'gruvbox'
	
	-- Load the colorscheme
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
	vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
end

ColorMyPencils()

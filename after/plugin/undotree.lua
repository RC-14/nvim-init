-- Show and hide undotree and automatically focus it
vim.keymap.set('n', '<leader>u', function ()
	vim.cmd.UndotreeToggle()

	-- No need to check for visibility because UndotreeFocus does that
	vim.cmd.UndotreeFocus()
end)

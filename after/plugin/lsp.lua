local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'bashls',
	'clangd',
	'tsserver',
	'eslint',
	'sumneko_lua',
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	if client.name == 'eslint' then
		vim.cmd.LspStop('eslint')
		return
	end

	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
	vim.keymap.set('n', '<leader>ws', vim.lsp.buf.workspace_symbol, opts)
	vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)
	vim.keymap.set('n', '[d', vim.diagnostic.goto_next, opts)
	vim.keymap.set('n', ']d', vim.diagnostic.goto_prev, opts)
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
	vim.keymap.set('n', '<leader>rr', vim.lsp.buf.references, opts)
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
	vim.keymap.set('i', '<C-h>', vim.lsp.buf.signature_help, opts)
end)

-- Bacause I'll hardly ever use lua for anything else than my nvim config
lsp.nvim_workspace()

lsp.setup()

local lsp_zero = require('lsp-zero')

lsp_zero.preset('recommended')

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {
		'bashls',
		'clangd',
		'tsserver',
		'eslint',
		'lua_ls',
	},
	handlers = {
		lsp_zero.default_setup,
	},
})

local cmp = require('cmp')

local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-y>'] = cmp.mapping.confirm({ select = true }),
		['<C-f>'] = cmp_action.luasnip_jump_forward(),
		['<C-b>'] = cmp_action.luasnip_jump_backward(),
		['<C-u>'] = cmp.mapping.scroll_docs(-4),
		['<C-d>'] = cmp.mapping.scroll_docs(4),
	})
})

lsp_zero.on_attach(function(client, bufnr)
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
require('lspconfig').lua_ls.setup(lsp_zero.nvim_lua_ls())

lsp_zero.setup()

-- Copy/Paste system clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y')
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p')
vim.keymap.set('n', '<leader>Y', '"+Y')
vim.keymap.set({'n', 'v'}, '<leader>P', '"+P')

-- Open netrw
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Move highlighted lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep the cursor centered
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Format the file
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)

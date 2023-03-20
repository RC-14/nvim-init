-- Set Leader
vim.g.mapleader = ' '

-- Termcolors
vim.o.termguicolors = true

-- Scrolling
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- Line Numbers
vim.o.number = true
vim.o.relativenumber = true

-- Indentation
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.expandtab = false
vim.o.tabstop = 4
vim.o.softtabstop = 0
vim.o.shiftwidth = 0

-- Line Wrap
vim.o.wrap = true
vim.o.linebreak = true
vim.o.breakindent = true

-- Use undofiles
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

-- Sign Column
vim.o.signcolumn = 'yes'

-- Color Column
vim.o.colorcolumn = '80'

-- Search
vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- Status Line
vim.o.laststatus = 2

-- Error Bells
vim.o.errorbells = false

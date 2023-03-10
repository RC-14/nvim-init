-- Check if an init.lua exists
local bootstrap = 1 ~= vim.fn.filereadable(vim.fn.stdpath('config') .. '/init.lua')

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use 'gruvbox-community/gruvbox'

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use 'mbbill/undotree'

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

	use 'max397574/better-escape.nvim'

	use 'lukas-reineke/indent-blankline.nvim'

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use 'andymass/vim-matchup'

	use 'numToStr/Comment.nvim'

	use 'ThePrimeagen/vim-be-good'

	-- Avoid errors while bootstapping
	if not bootstrap then
		use 'windwp/nvim-ts-autotag'
	end
end)

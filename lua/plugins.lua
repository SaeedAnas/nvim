return require("packer").startup({
	function(use)
		use("wbthomason/packer.nvim")

		-- CORE
		-- Telescope
		use({
			"nvim-telescope/telescope.nvim",
			requires = {
				{ "nvim-lua/plenary.nvim" },
				{ "nvim-lua/popup.nvim" },
				{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
			},
		})

		-- Which-key
		use("folke/which-key.nvim")

		-- Treesitter
		use({
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
		})

		-- Impatient
		use("lewis6991/impatient.nvim")

		-- Git
		use("lewis6991/gitsigns.nvim")
		use("sindrets/diffview.nvim")
		use("f-person/git-blame.nvim")
		use("tpope/vim-fugitive")

		use({ "iamcco/markdown-preview.nvim", run = "cd app && yarn install", cmd = "MarkdownPreview" })
		-- Comments
		use("terrortylor/nvim-comment")
		use("JoosepAlviste/nvim-ts-context-commentstring")
		use("folke/todo-comments.nvim")

		-- File icons
		use("kyazdani42/nvim-web-devicons")

		-- Filetree
		use("kyazdani42/nvim-tree.lua")
		use("kevinhwang91/rnvimr")

		-- tmux
		-- use("aserowy/tmux.nvim")

		-- Utils
		-- Better escape
		use("max397574/better-escape.nvim")

		-- Autopairs
		use("windwp/nvim-autopairs")
		use("windwp/nvim-ts-autotag")

		-- TODO Hop or lightspeed
		-- use 'phaazon/hop.nvim'
		use("ggandor/lightspeed.nvim")

		-- Targets
		use("wellle/targets.vim")

		-- Project
		use("ahmedkhalf/project.nvim")

		-- Trouble
		use("folke/trouble.nvim")

		-- Matchup
		use("andymass/vim-matchup")

		-- Autosave
		use("Pocco81/AutoSave.nvim")

		-- UI
		-- Dashboard
		use("glepnir/dashboard-nvim")

		-- Bufferline
		use("akinsho/bufferline.nvim")

		-- Colorschemes
		use("olimorris/onedark.nvim")
		use("tanvirtin/monokai.nvim")
		use("RRethy/nvim-base16")

		-- Statusline
		use("famiu/feline.nvim")
		use("nvim-lua/lsp-status.nvim")

		-- Rainbow
		use("norcalli/nvim-colorizer.lua")
		use("p00f/nvim-ts-rainbow")

		-- Indent blankline
		use("lukas-reineke/indent-blankline.nvim")

		-- Smooth Scroll
		use("karb94/neoscroll.nvim")

		-- TODO: LSP
		-- Lspconfig
		use("neovim/nvim-lspconfig")
		use("kabouzeid/nvim-lspinstall")

		-- Null-ls
		use("jose-elias-alvarez/null-ls.nvim")

		-- Better looking LSP
		use("ray-x/lsp_signature.nvim")
		use("onsails/lspkind-nvim")

		-- Nvim cmp
		use("hrsh7th/nvim-cmp")
		use("hrsh7th/cmp-nvim-lsp")
		use("hrsh7th/cmp-buffer")

		-- Snippets
		use("L3MON4D3/LuaSnip")
		use("saadparwaiz1/cmp_luasnip")
		-- use 'hrsh7th/cmp-vsnip'
		-- use 'hrsh7th/vim-vsnip'
		-- use 'SirVer/ultisnips'
		-- use 'quangnguyen30192/cmp-nvim-ultisnips'

		-- DAP
		use("mfussenegger/nvim-dap")
		use("Pocco81/DAPInstall.nvim")

		-- Language Specific
		-- Rust
		use("simrat39/rust-tools.nvim")

		-- Java
		use("mfussenegger/nvim-jdtls")

		-- TODO:
		-- Search and replace
		-- use 'windwp/nvim-spectre'
		-- Codi
		-- use 'metakirby5/codi.vim'
		-- Bracey
		-- use 'turbio/bracey.vim'
	end,
	config = {
		compile_path = vim.fn.stdpath("config") .. "/lua/packer_compiled.lua",
	},
})

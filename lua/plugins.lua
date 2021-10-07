return require('packer').startup({function()
    use "wbthomason/packer.nvim"

    -- CORE
    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 
            {"nvim-lua/plenary.nvim"}, 
            {"nvim-lua/popup.nvim"}, 
            {"nvim-telescope/telescope-fzf-native.nvim", run='make'}
        }
    }

    -- Which-key
    use "folke/which-key.nvim"

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Impatient
    use 'lewis6991/impatient.nvim'

    -- Git
    use 'lewis6991/gitsigns.nvim'
    use 'sindrets/diffview.nvim'
    use 'f-person/git-blame.nvim'
    use 'tpope/vim-fugitive'

    -- Comments
    use 'terrortylor/nvim-comment'
    use 'JoosepAlviste/nvim-ts-context-commentstring'
    use 'folke/todo-comments.nvim'

    -- File icons
    use 'kyazdani42/nvim-web-devicons'

    -- Filetree
    use 'kyazdani42/nvim-tree.lua'
    use "kevinhwang91/rnvimr"

    -- Utils
    -- Better escape
    use "max397574/better-escape.nvim"

    -- Autopairs
    use 'windwp/nvim-autopairs'

    -- TODO Hop or lightspeed
    -- use 'phaazon/hop.nvim'
    use 'ggandor/lightspeed.nvim'

    -- Targets
    use 'wellle/targets.vim'

    -- Project
    use "ahmedkhalf/project.nvim"

    -- Trouble
    use 'folke/trouble.nvim'

    -- Matchup
    use 'andymass/vim-matchup'

    -- Autosave
    use "Pocco81/AutoSave.nvim"

    -- UI
    -- Dashboard
    use "glepnir/dashboard-nvim"

    -- Bufferline
    use 'akinsho/bufferline.nvim'

    -- Theme
    use 'olimorris/onedark.nvim'

    -- Feline
    use 'famiu/feline.nvim'

    -- Rainbow
    use 'norcalli/nvim-colorizer.lua'
    use 'p00f/nvim-ts-rainbow'

    -- Indent blankline
    use 'lukas-reineke/indent-blankline.nvim'

    -- TODO LSP
    -- Lspconfig
    use 'neovim/nvim-lspconfig'
    use 'kabouzeid/nvim-lspinstall'

    -- Nvim cmp
    use 'hrsh7th/nvim-cmp'

    -- DAP
    use 'mfussenegger/nvim-dap'
    use 'Pocco81/DAPInstall.nvim'

    -- TODO
    -- Search and replace
    -- use 'windwp/nvim-spectre'
    -- Codi
    -- use 'metakirby5/codi.vim'
    -- Markdown preview
    -- use 'iamcco/markdown-preview.nvim'
    -- Bracey
    -- use 'turbio/bracey.vim'


end,
config = {
	compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
}})

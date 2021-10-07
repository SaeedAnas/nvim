return require('packer').startup(function()
	use "wbthomason/packer.nvim"

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

    -- Filetree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
    }
    use "kevinhwang91/rnvimr"

    -- Dashboard
    use "glepnir/dashboard-nvim"

    -- Bufferline
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

    -- Project
    use "ahmedkhalf/project.nvim"

end)

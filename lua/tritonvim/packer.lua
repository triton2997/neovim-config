-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        "tomasiser/vim-code-dark",
    }

    vim.cmd('colorscheme codedark')

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use { 'nvim-treesitter/playground' }

    use { 'preservim/nerdtree' }

    use { 'mbbill/undotree' }

    use { 'tpope/vim-fugitive' }

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
    }

    use({
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    })

    use { 'troydm/zoomwintab.vim' }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

end)

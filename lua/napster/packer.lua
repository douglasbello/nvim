-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
--  use {
--      "rebelot/kanagawa.nvim",
--      as = 'kanagawa',
--      config = function()
--          vim.cmd('colorscheme kanagawa')
--      end
--  }

--use ({
--    'AlexvZyl/nordic.nvim',
--    as = 'nordic',
--    config = function()
--  	  vim.cmd('colorscheme gruvbox')
--    end
--
--})

--use ({
--    'sainnhe/gruvbox-material',
--    as = 'gruvbox-material',
--    config = function()
--        vim.cmd('colorscheme gruvbox-material')
--    end
--})

--use ({
--    'datsfilipe/min-theme.nvim',
--    as = 'min-theme',
--    config = function ()
--        vim.cmd('colorscheme min-theme')
--    end
--})

--use ({
--    'rose-pine/neovim',
--    as = 'rose-pine',
--    config = function ()
--        vim.cmd('colorscheme rose-pine')
--    end
--})

use ({
    'lifepillar/vim-solarized8'
--    config = function()
--        vim.cmd('colorscheme solarized8')
--    end
})

use {
    'bluz71/vim-moonfly-colors',
     as = moonfly,

     config = function()
        vim.o.background = 'dark'
        vim.cmd.colorscheme 'moonfly'
    end
}

use {
    'machakann/vim-highlightedyank'
}

use {
    'terryma/vim-multiple-cursors'
}

use ('preservim/nerdtree')
use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use ('nvim-treesitter/playground')
use ('ThePrimeagen/harpoon')
use('mbbill/undotree')
use('tpope/vim-fugitive')
use('VonHeikemen/lsp-zero.nvim')
use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp"
}
use({
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!:).
    run = "make install_jsregexp"
})

use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
}
end)


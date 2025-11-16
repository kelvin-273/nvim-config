local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	Packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup(function(_)
  local use = require('packer').use
  -- Who packs the packer?
  use 'wbthomason/packer.nvim'
  use {
    'github/copilot.vim',
    cmd = 'Copilot',
  }

  -- status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'nvim-tree/nvim-web-devicons',
      'RRethy/nvim-base16',
      opt = true },
  }
  -- vim-fugitive
  use 'tpope/vim-fugitive'
  --use 'NeogitOrg/neogit'
  -- lsp
  use {
    'neovim/nvim-lspconfig',
  }

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'quangnguyen30192/cmp-nvim-ultisnips',
    }
  }

  use 'folke/neodev.nvim'

  use {
    'onsails/lspkind-nvim'
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- Snippets
  use 'sirver/ultisnips'
  use 'honza/vim-snippets'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use {
    'nvim-treesitter/playground'
  }

  use 'vimwiki/vimwiki'
  use 'lervag/vimtex'
  use {
    'chomosuke/typst-preview.nvim',
    run = function() require 'typst-preview'.update() end,
  }

  use {
    'ThePrimeagen/harpoon',
    branch = "harpoon2"
  }
  use 'junegunn/goyo.vim'
  use 'folke/zen-mode.nvim'
  use {
    'shortcuts/no-neck-pain.nvim',
    tag = '*'
  }
  use 'tpope/vim-surround'
  use 'vale1410/vim-minizinc'
  use 'rust-lang/rust.vim'
  use 'takac/vim-hardtime'
  -- use 'idris-hackers/idris-vim'
  use {
    'ThePrimeagen/vim-be-good',
    run = 'install.sh'
  }
  use 'raimondi/delimitMate'
  use 'preservim/nerdcommenter'
  use 'preservim/nerdtree'
  
  --use 'folke/snacks.nvim'
  --use 'obsidian-nvim/obsidian.nvim'
  --use {
  --  "epwalsh/pomo.nvim",
  --  requires = {
  --    'rcarriga/nvim-notify'
  --  },
  --}

  -- Setup Packer if just installed
  if Packer_bootstrap then
    require('packer').sync()
  end
end)

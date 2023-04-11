local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup(function(_)
  local use = require('packer').use
  -- Who packs the packer?
  use 'wbthomason/packer.nvim'

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

  use 'ThePrimeagen/harpoon'
  use 'junegunn/goyo.vim'
  use 'tpope/vim-surround'
  use 'vale1410/vim-minizinc'
  use 'rust-lang/rust.vim'
  use 'takac/vim-hardtime'
  use 'lervag/vimtex'
  -- use 'idris-hackers/idris-vim'
  use {
    'ThePrimeagen/vim-be-good',
    run = 'install.sh'
  }
  use 'raimondi/delimitMate'
  use 'aluriak/nerdcommenter'

  -- Setup Packer if just installed
  if packer_bootstrap then
    require('packer').sync()
  end
end)

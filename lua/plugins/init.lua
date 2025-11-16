return {
  {
    'github/copilot.vim',
    cmd = 'Copilot',
  },

  -- status line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'RRethy/nvim-base16',
      opt = true },
  },
  -- vim-fugitive
  'tpope/vim-fugitive',
  --'NeogitOrg/neogit'
  -- lsp
  'neovim/nvim-lspconfig',


  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'quangnguyen30192/cmp-nvim-ultisnips',
    }
  },

  'folke/neodev.nvim',
  'onsails/lspkind-nvim',

  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- Snippets
  'sirver/ultisnips',
  'honza/vim-snippets',

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },

  'nvim-treesitter/playground',

  'vimwiki/vimwiki',
  'lervag/vimtex',
  {
    'chomosuke/typst-preview.nvim',
    build = function() require 'typst-preview'.update() end,
    cmd = 'TypstPreview'
  },

  {
    'ThePrimeagen/harpoon',
    branch = "harpoon2",
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  'folke/zen-mode.nvim',
  {
    'shortcuts/no-neck-pain.nvim',
    tag = '*'
  },
  'tpope/vim-surround',
  --{
  --  'vale1410/vim-minizinc',
  --  ft = { 'minizinc' }
  --},
  'rust-lang/rust.vim',
  'takac/vim-hardtime',
  -- 'idris-hackers/idris-vim'
  {
    'ThePrimeagen/vim-be-good',
    build = 'install.sh'
  },
  'raimondi/delimitMate',
  'preservim/nerdcommenter',
  'preservim/nerdtree',
  
  --'folke/snacks.nvim'
  --'obsidian-nvim/obsidian.nvim'
  --{
  --  "epwalsh/pomo.nvim",
  --  dependencies = {
  --    'rcarriga/nvim-notify'
  --  },
  --},
}

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
  {
    'folke/lazydev.nvim',
    ft = { 'lua' },
    opts = {},
  },

  -- Snippets
  'sirver/ultisnips',
  'honza/vim-snippets',

  {
    'ThePrimeagen/harpoon',
    branch = "harpoon2",
    dependencies = { 'nvim-lua/plenary.nvim' },
    enabled = false,
  },
  {
    'folke/zen-mode.nvim',
    cmd = 'ZenMode',
    lazy = true,
  },
  {
    'shortcuts/no-neck-pain.nvim',
    version = '*',
    lazy = true,
  },
  'tpope/vim-surround',
  --{
  --  'vale1410/vim-minizinc',
  --  ft = { 'minizinc' }
  --},
  {
    'takac/vim-hardtime',
    cmd = {'HardTimeToggle', 'HardTimeOn'},
  },
  -- 'idris-hackers/idris-vim'
  {
    'ThePrimeagen/vim-be-good',
    build = 'install.sh',
    cmd = 'VimBeGood',
  },
  'preservim/nerdcommenter',
}

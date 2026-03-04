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
    opts = {
        options = {
          theme = 'base16'
        }
      },
  },
  -- vim-fugitive
  {
    'tpope/vim-fugitive',
    --cmd = { 'Git', 'G', 'Gdiffsplit', 'Gvdiffsplit', 'Gblame' }
  },
  --'NeogitOrg/neogit'
  {
    'lewis6991/gitsigns.nvim',
    event = { 'BufReadPre', 'BufNewFile' }
  },

  -- lsp
  {
    'folke/lazydev.nvim',
    ft = { 'lua' },
    opts = {},
  },

  -- Snippets
  {
    'sirver/ultisnips',
    event = 'InsertEnter',
  },
  {
    'honza/vim-snippets',
    event = 'InsertEnter',
  },
  {
    'tpope/vim-surround',
    keys = {'cs', 'ds', 'ys'},
  },
  {
    'windwp/nvim-autopairs',
    enabled = true,
    event = 'InsertEnter',
    config = function()
      local npairs = require("nvim-autopairs")
      local Rule = require("nvim-autopairs.rule")
      local cond = require("nvim-autopairs.conds")

      npairs.setup({})

      npairs.add_rules({
        Rule("$", "$", "typst")
          :with_pair(cond.not_after_text("$"))
          :with_move(cond.before_text("$"))
          :with_pair(cond.not_inside_quote())
      })
    end
  },

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
  {
    'takac/vim-hardtime',
    cmd = {'HardTimeToggle', 'HardTimeOn'},
  },
  {
    'ThePrimeagen/vim-be-good',
    build = 'install.sh',
    cmd = 'VimBeGood',
  },
  'preservim/nerdcommenter',
}

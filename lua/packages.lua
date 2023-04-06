local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup(function(use)
  local use = require('packer').use
  -- Who packs the packer?
  use 'wbthomason/packer.nvim'

  -- status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  }
  -- vim-fugitive
  use {
    'tpope/vim-fugitive',
  }

  use {}
  -- Setup Packer if just installed
  if packer_bootstrap then
    require('packer').sync()
  end
end)

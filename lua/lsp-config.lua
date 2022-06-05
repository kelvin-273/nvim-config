-- Set up nvim-lsp

local nvim_lsp = require('lspconfig')

nvim_lsp.rust_analyzer.setup{}
nvim_lsp.hls.setup{}
nvim_lsp.clangd.setup{}
nvim_lsp.gopls.setup{}
--nvim_lsp.pyright.setup{}
nvim_lsp.pylsp.setup{}
--nvim_lsp.sumneko_lua.setup{}
nvim_lsp.texlab.setup{}
nvim_lsp.tsserver.setup{}
nvim_lsp.cssls.setup{ cmd = { "css-languageserver", "--stdio" } }

local configs = require'lspconfig/configs'

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

if not nvim_lsp.emmet_ls then
  configs.emmet_ls = {
    default_config = {
      cmd = {'emmet-ls', '--stdio'};
      filetypes = {'html', 'css'};
      root_dir = function(fname)
        return vim.loop.cwd()
      end;
      settings = {};
    };
  }
end
nvim_lsp.emmet_ls.setup{ capabilities = capabilities, on_attach=on_attach }

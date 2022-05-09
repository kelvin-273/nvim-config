-- Setup nvim-cmp.
local cmp = require'cmp'
local lspkind = require'lspkind'

cmp.setup({
  snippet = {
    expand = function(args)
       vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item()),
    ['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item()),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
    { name = 'ultisnips' }, -- For ultisnips users.
     --{ name = 'vim-snippets' }, -- For ultisnips users.
    { name = 'buffer' },
  }),
  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      --menu = {
        --buffer = "[buf]",
        --nvim_lsp = "[lsp]",
        --nvim_lua = "[api]",
        --path = "[path]",
      --}
    }
  },
  snippets = {},
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
--require('lspconfig')[%YOUR_LSP_SERVER%].setup {
  --capabilities = capabilities
--}

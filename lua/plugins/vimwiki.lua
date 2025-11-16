return {
  'vimwiki/vimwiki',
  cmd = { 'VimwikiIndex', 'VimwikiMakeDiaryNote', 'VimwikiDiaryIndex' },
  config = function()
    vim.g.vimwiki_list = {
      {
        name = 'personal',
        path = '~/Documents/vimwiki/',
        path_html = '~/Documents/vimwiki/html',
        template_path = '~/Documents/vimwiki/templates/',
      },
      {
        name = 'phd',
        path = '~/Documents/Research/PhD/Kelvin-s-PhD-wiki',
        path_html = '~/Documents/Research/PhD/Kelvin-s-PhD-wiki/html',
        template_path = '~/Documents/Research/PhD/Kelvin-s-PhD-wiki/templates/',
      },
    }
    vim.g.vimwiki_global_ext = 0
    vim.g.vimwiki_markdown_link_ext = 1
    vim.g.vimwiki_markdown_strikethrough = 1
    vim.g.vimwiki_auto_header = 1
    vim.g.vimwiki_folding = 'expr'
    vim.g.vimwiki_conceallevel = 2
  end,
}

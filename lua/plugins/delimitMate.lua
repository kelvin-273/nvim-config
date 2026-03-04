-- Latex specific behaviour --
-- TODO: expand $ -> $$ <19-05-23> --
-- TODO: avoid escapes (do they need to be escaped or can they be expanded in a different way) <19-05-23> --
return {
  'raimondi/delimitMate',
  enabled = false,
  config = function()
    vim.g.delimitMate_expand_space = 1
    vim.g.delimitMate_expand_inside_quotes = 1
    vim.g.delimitMate_expand_cr = 2
  end
}

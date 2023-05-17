-- Determine the host system
local is_mac = vim.fn.has("mac") == 1
local is_linux = vim.fn.has("unix") == 1 and not is_mac

-- Define viewers based on OS
if is_mac then
  vim.g.vimtex_view_method = 'skim'
elseif is_linux then
  vim.g.vimtex_view_method = 'zathura'
else
end

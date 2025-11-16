vim.keymap.set('n', '<leader>g', '<Cmd>Git<CR>')
-- window moving
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })
vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
vim.g.copilot_no_tab_map = true

-- Put the cursor line at 33% from the top when pressing `zz`
vim.keymap.set("n", "zz", function()
  local win_height = vim.api.nvim_win_get_height(0)
  -- Row where the cursor should land (1-indexed)
  local target = math.floor(win_height * 0.33)
  -- TODO: What do we do here?
  --vim.cmd("normal! " .. target .. "zz")
  vim.cmd("normal! zz")
end, { noremap = true, silent = true })

-- windows with <leader>w instead of <C-w>
vim.keymap.set('n', '<leader>w', '<C-w>', { remap = true, desc = '[W]indow Management' })

-- Leader binds for common commands
vim.keymap.set('n', '<leader>u', ':bufdo update<CR><C-o>', { desc = '[U]pdate All' })
vim.keymap.set('n', '<leader>q', ':update<CR>:q<CR>', { desc = 'Save and [Q]uit' })

-- open oil in %dir
vim.keymap.set('n', '<leader>o', ':Oil<CR>', { desc = 'Open [O]il' })

vim.api.nvim_create_user_command('Themes', function()
  vim.cmd 'Telescope colorscheme'
end, {})

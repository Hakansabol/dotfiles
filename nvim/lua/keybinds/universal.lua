-- window navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- better wrapping
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

-- [C]apitalize Word
vim.keymap.set('n', 'gC', 'g~iW', { desc = 'Toggle [C]ase of Word' })
vim.keymap.set('s', 'gC', 'g~', { desc = 'Toggle [C]ase of Selection' })

-- windows with <leader>w instead of <C-w>
vim.keymap.set('n', '<leader>w', '<C-w>', { remap = true, desc = '[W]indow Management' })

-- Leader binds for common commands
vim.keymap.set('n', '<leader>u', ':bufdo update<CR><C-o>', { desc = '[U]pdate All' })
vim.keymap.set('n', '<leader>q', ':update<CR>:q<CR>', { desc = 'Save and [Q]uit' })

-- open oil in %dir
vim.keymap.set('n', '-', ':Oil<CR>', { desc = 'Open [O]il' })

vim.g.clipboard = 'wl-copy'

-- theme switcher
vim.api.nvim_create_user_command('Themes', function()
  vim.cmd 'Telescope colorscheme'
end, {})

vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Execute [C]ode [A]ction' })
vim.keymap.set('n', 's', require('hop').hint_words, { desc = 'Hop' })

vim.g.neoterm_default_mod = 'vertical'

local ls = require 'luasnip'
-- Luanip jump forwards legacy
vim.keymap.set({ 'i', 's' }, '<c-q>', function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

-- Luasnip jump forwards with <C-h>
vim.keymap.set({ 'i', 's' }, '<c-h>', function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

-- Luasnip jump backwards with <C-H>
vim.keymap.set({ 'i', 's' }, '<c-s-h>', function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set('i', '<Tab>', '<Tab>', { remap = false })

-- diagnostics navigation
vim.keymap.set('n', 'gd', function()
  vim.diagnostic.jump { count = 1, float = true }
end, { desc = '[G]oto [D]iagnostic' })

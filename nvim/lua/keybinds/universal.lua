-- better wrapping
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

-- windows with <leader>w instead of <C-w>
vim.keymap.set('n', '<leader>w', '<C-w>', { remap = true, desc = '[W]indow Management' })

-- Leader binds for common commands
vim.keymap.set('n', '<leader>u', ':bufdo update<CR><C-o>', { desc = '[U]pdate All' })
vim.keymap.set('n', '<leader>q', ':update<CR>:q<CR>', { desc = 'Save and [Q]uit' })

-- open oil in %dir
vim.keymap.set('n', '-', ':Oil<CR>', { desc = 'Open [O]il' })
vim.keymap.set('n', '<leader>o', ':Oil<CR>', { desc = 'Open [O]il' })

vim.g.clipboard = 'wl-copy'

vim.api.nvim_create_user_command('Themes', function()
  vim.cmd 'Telescope colorscheme'
end, {})

vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Execute [C]ode [A]ction' })
vim.keymap.set('n', 's', require('hop').hint_words, { desc = 'Hop' })

vim.g.neoterm_default_mod = 'vertical'

local ls = require 'luasnip'
vim.keymap.set({ 'i', 's' }, '<C-q>', function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- diagnostics navigation
vim.keymap.set('n', 'gd', function()
  vim.diagnostic.jump { count = 1, float = true }
end, { desc = '[G]oto [D]iagnostic' })

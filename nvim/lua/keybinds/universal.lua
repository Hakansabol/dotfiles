-- window navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Barbar.nvim
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
map('n', '<C-S-Tab>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<C-Tab>', '<Cmd>BufferNext<CR>', opts)
map('n', '<C-w>p', '<Cmd>BufferPick<CR>', opts)

map('n', '<C-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<C-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<C-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<C-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<C-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<C-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<C-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<C-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<C-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<C-0>', '<Cmd>BufferLast<CR>', opts)

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

-- write and format (for langs with conform.nvim disabled)
vim.api.nvim_create_user_command('W', function()
  vim.lsp.buf.format()
  vim.cmd 'w'
end, {})

-- fixing blink >:(
vim.keymap.set('i', '<C-j>', function()
  local lsn = require 'luasnip'
  if lsn.choice_active() then
    lsn.change_choice(1)
  end
  require('blink-cmp').select_next()
end)
vim.keymap.set('i', '<C-k>', function()
  local lsn = require 'luasnip'
  if lsn.choice_active() then
    lsn.change_choice(-1)
  end
  require('blink-cmp').select_prev()
end)

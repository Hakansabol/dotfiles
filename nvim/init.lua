-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

vim.g.have_nerd_font = true
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.number = true
vim.o.mouse = 'a'
vim.o.showmode = false
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.o.inccommand = 'split'
vim.o.cursorline = true
vim.o.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

-- :Lazy - Manage plugins
-- :Lazy update - updates plugins
require('lazy').setup({
  require 'kickstart.guess-indent',
  require 'kickstart.gitsigns',
  require 'kickstart.which-key',
  require 'kickstart.telescope',
  require 'kickstart.lazydev',
  require 'kickstart.nvim-lspconfig',
  require 'kickstart.conform',
  require 'kickstart.blink',
  require 'kickstart.todo-comments',
  require 'kickstart.mini',
  require 'kickstart.nvim-treesitter',
  require 'kickstart.indent_line',
  require 'kickstart.autopairs',
  require 'kickstart.midnight',
  require 'kickstart.jellybeans',

  require 'plugins.roslyn',
  require 'plugins.oil',
  require 'plugins.trouble',
  require 'plugins.hop',
  require 'plugins.neoterm',
  -- require 'kickstart.debug',
  -- require 'kickstart.lint',
  -- require 'kickstart.neo-tree',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
    backdrop = 100,
  },
})

-- PLUGIN SETUP
require 'lsp.roslyn'

-- CONFIG RULES
require 'config'
require 'keybinds.oil'
require 'keybinds.c++'
require 'keybinds.java'

-- BINDINGS
require 'keybinds.terminal'
require 'keybinds.universal'

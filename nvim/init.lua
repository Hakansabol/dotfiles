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
vim.o.breakindent = true -- indent line wrapping
vim.o.undofile = true -- undo history saved between sessions
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.list = true
vim.o.inccommand = 'split'
vim.o.cursorline = true
vim.o.scrolloff = 10
vim.o.confirm = true -- confirm dialogue such as when quitting without saving
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>') -- stop highlighting search on {n} <Esc>

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
require('lazy').setup {
  -- Kickstart plugins
  require 'plugins.barbar',
  require 'plugins.telescope',
  require 'plugins.nvim-lspconfig',
  require 'plugins.blink',
  require 'plugins.guess-indent',
  require 'plugins.gitsigns',
  require 'plugins.which-key',
  require 'plugins.conform',
  require 'plugins.todo-comments',
  require 'plugins.mini',
  require 'plugins.nvim-treesitter',
  require 'plugins.indent_line',
  require 'plugins.autopairs',
  require 'plugins.lazydev',
  require 'plugins.neo-tree',

  -- Custom
  require 'plugins.roslyn',
  require 'plugins.oil',
  require 'plugins.trouble',
  require 'plugins.hop',
  require 'plugins.neoterm',
  require 'plugins.competitest',
  require 'plugins.telescope-luasnip',

  -- Themes
  { 'dasupradyumna/midnight.nvim', lazy = false, priority = 1000 },
  { 'wtfox/jellybeans.nvim', lazy = false, priority = 1000 },
  { 'ellisonleao/gruvbox.nvim', priority = 1000, config = true, opts = ... },
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
}

-- PLUGIN SETUP
require 'lsp.roslyn'

-- CONFIG RULES
require 'config'
require 'keybinds.oil'
require 'keybinds.c++'
require 'keybinds.python'
require 'keybinds.java'

-- BINDINGS
require 'keybinds.universal'
require 'keybinds.terminal'
require 'keybinds.codeforces'

-- SNIPS
require 'snips'
require('luasnip.loaders.from_lua').load { paths = '~/snips/snips_rust.lua' }
require('luasnip.loaders.from_lua').load { paths = '~/snips/snips_rust_basics.lua' }

-- THEME
vim.cmd.colorscheme 'gruvbox'
-- vim.cmd 'hi Normal guibg=#000000'

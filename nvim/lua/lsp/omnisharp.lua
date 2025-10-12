-- ~/.config/nvim/lua/custom/lsp/omnisharp.lua

local nvim_lsp = require 'lspconfig'
local util = require 'lspconfig.util'
local pid = vim.fn.getpid()

-- On attach function
local on_attach = function(client, bufnr)
  print('OmniSharp attached to buffer ' .. bufnr)
  vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'

  -- Optional keymaps (uncomment if you want)
  -- local opts = { noremap=true, silent=true }
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
end

local omnisharp_bin = '/opt/omnisharp/OmniSharp.dll'
local dotnet_bin = '/home/hakan/.dotnet/dotnet'

function rdir()
  return 'Users/hakansabol/Documents/Github/game-a-week/Game-A-Week1/'
end

print 'Loading Omnisharp!'
vim.lsp.config['omnisharp'] = {
  cmd = { 'dotnet', omnisharp_bin, '--languageserver', '--hostPID', tostring(pid) },
  --root_dir = rdir(),
  root_dir = util.root_pattern('*.sln', '*.csproj', 'Assembly-CSharp.csproj'),
  filetypes = { 'cs' },
  on_attach = on_attach,
  --flags = {
  --debounce_text_changes = 150,
  --},
}

vim.lsp.enable 'omnisharp'

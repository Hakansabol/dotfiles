local ls = require 'luasnip'

ls.config.set_config {
  history = true,
  updateevents = 'TextChanged, TextChangedI',
}

vim.api.nvim_create_user_command('Snips', function()
  vim.cmd 'source ~/dotfiles/nvim/lua/snips.lua'
  print 'Sourced /snips.lua'
end, {})

ls.add_snippets('all', {
  ls.parser.parse_snippet('arch', 'Arch is the best!'),
})

require 'snips/snips_cpp'
require 'snips/snips_cs'
require 'snips/snips_gd'
require 'snips/snips_lua'

local ls = require 'luasnip'

-- ##############################
-- SNIPPETS
-- Defined in functions matching the name of the language.
-- Defined primarily with the Lua syntax, VSC-style are old.
-- Snippets can be searched via <leader>cn
-- ##############################

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
require 'snips/snips_rust'
require 'snips/snips_lua'

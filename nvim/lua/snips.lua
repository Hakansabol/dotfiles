local ls = require 'luasnip'

vim.api.nvim_create_user_command('Snips', function()
  vim.cmd 'source ~/dotfiles/nvim/lua/snips.lua'
  print 'Sourced /snips.lua'
end, {})

-- Snippets that work on all filetypes
ls.add_snippets('all', {
  ls.parser.parse_snippet('arch', 'Arch is the best!'),
})

-- Snippets that work only on cs files (for Unity dev)
ls.add_snippets('cs', {
  ls.parser.parse_snippet('gc', 'GetComponent<${1:T}>()'),
  ls.parser.parse_snippet('header', '[Serialize, Header("${1:Title}")]'),
  ls.parser.parse_snippet(',Start', 'public void Start() {\n\t$1\n}'),
  ls.parser.parse_snippet('summary', '/// <summary>\n/// $1\n/// </summary>'),
})

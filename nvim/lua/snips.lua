local ls = require 'luasnip'

-- Snippets that work on all filetypes
ls.add_snippets('all', {
  ls.parser.parse_snippet('gc', 'GetComponent<${1:T}>()'),
})
print 'a'

-- Snippets that work only on cs files (for Unity dev)

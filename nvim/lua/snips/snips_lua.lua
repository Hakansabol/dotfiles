local ls = require 'luasnip'

ls.add_snippets('lua', {
  ls.parser.parse_snippet('snip', "\nls.parser.parse_snippet(\n\t'${1:snip}',\n[[\n${2:content}\n]]\n),"),
})

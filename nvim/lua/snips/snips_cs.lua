local ls = require 'luasnip'

ls.add_snippets('cs', {
  ls.parser.parse_snippet('gc', 'GetComponent<${1:T}>()'),
  ls.parser.parse_snippet('header', '[Serialize, Header("${1:Title}")]'),
  ls.parser.parse_snippet(',Start', 'public void Start() {\n\t$1\n}'),
  ls.parser.parse_snippet('summary', '/// <summary>\n/// $1\n/// </summary>'),
})

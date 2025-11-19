local ls = require 'luasnip'

vim.api.nvim_create_user_command('Snips', function()
  vim.cmd 'source ~/dotfiles/nvim/lua/snips.lua'
  print 'Sourced /snips.lua'
end, {})

-- Snippets that are useful in every language
ls.add_snippets('all', {
  ls.parser.parse_snippet('arch', 'Arch is the best!'),
})

-- Snippets for development in the Unity game engine
ls.add_snippets('cs', {
  ls.parser.parse_snippet('gc', 'GetComponent<${1:T}>()'),
  ls.parser.parse_snippet('header', '[Serialize, Header("${1:Title}")]'),
  ls.parser.parse_snippet(',Start', 'public void Start() {\n\t$1\n}'),
  ls.parser.parse_snippet('summary', '/// <summary>\n/// $1\n/// </summary>'),
})

-- Snippets for general C++
ls.add_snippets('cpp', {
  ls.parser.parse_snippet(
    ',cpp',
    '#include <iostream>\nusing namespace std;\n\nint main(int argc, char* argv[])\n{\n	${1:cout << "Hello, world!";}\n	return 0;\n}\n'
  ),
  ls.parser.parse_snippet(',codeforces', '\n	int t;\n	cin >> t;\n	while (t--) {\n$1\n	}\n	'),
  ls.parser.parse_snippet('fori', 'for (int i = 0; i < ${1:n}; i++)\n{\n\t$2\n}'),
})

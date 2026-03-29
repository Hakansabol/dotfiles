local ls = require 'luasnip'

-- lua style snippets
local s = ls.s
local i = ls.insert_node
local c = ls.choice_node
local t = ls.text_node
local fmt = require('luasnip.extras.fmt').fmt
local rep = require('luasnip.extras').rep

ls.add_snippets('rust', {
  -- code style snips
  ls.parser.parse_snippet('max', [[std::cmp::max($1,${2:0})]]),
  ls.parser.parse_snippet('min', [[std::cmp::min($1,${2:0})]]),
  -- basic function declaration
  -- i(1): name
  -- c(2): toggle between &self implementation or nothing
  -- i(3): add params
  -- i(4): add
  s(
    'fn',
    fmt(
      [[
  fn {}({}{}) -> {}
  {{
	{}
  }}
  ]],
      { i(1, 'name'), c(2, { t '&self, ', t '' }), i(3, '()'), i(4, 'ot'), i(5, 'body') }
    )
  ),
  -- basic println of a single element
  s(
    'prln',
    fmt(
      [[
	println!("{<>}");
	  ]],
      {
        i(1, 'n'),
      },
      {
        delimiters = '<>',
      }
    )
  ),
  -- variable intake
  s(
    'vv', -- [V]ariable: [V]ector
    fmt(
      [[
		let {} = vec![];
		]],
      { c(1, { fmt('mut {}', i(1)), i(1) }) }
    )
  ),
  s(
    'v',
    fmt(
      [[
		let {} = {};
		]],
      { c(1, { i(1), fmt('mut {}', i(1)) }), i(2, '0') }
    )
  ),
  -- variable output

  s(
    '>v', -- output [V]ector
    fmt(
      [[
	let {} = {}.iter().map(|x| x.to_string()).collect::<Vec<String>>().join(" ");
		]],
      { i(2, 'out'), i(1, 'nums') }
    )
  ),
})

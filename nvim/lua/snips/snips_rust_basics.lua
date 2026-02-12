local ls = require 'luasnip'

-- lua style snippets
local s = ls.s
local i = ls.insert_node
local c = ls.choice_node
local t = ls.text_node
local fmt = require('luasnip.extras.fmt').fmt
local rep = require('luasnip.extras').rep

ls.add_snippets('rust', {
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
      { i(1, 'name'), c(2, { t 'yes', t '&self, ' }), i(3), i(4, 'ot'), i(5, 'body') }
    )
  ),
})

local ls = require 'luasnip'

-- lua style snippets
local s = ls.s
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmt
local rep = require('luasnip.extras').rep

ls.add_snippets('rust', {
  s(
    'lssss',
    fmt(
      [[
  lua style snippets: {}
  ]],
      { i(1, 'name') }
    )
  ),
})

require 'snips.snips_rust_basics'

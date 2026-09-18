local ls = require 'luasnip'

-- lua style snippets
local s = ls.s
local i = ls.insert_node
local c = ls.choice_node
local t = ls.text_node
local fmt = require('luasnip.extras.fmt').fmt
local rep = require('luasnip.extras').rep

ls.add_snippets('html', {
  -- code style snips
  ls.parser.parse_snippet(
    'doctype',
    [[<!DOCTYPE html>
<html lang="en">
	$1
</html>]]
  ),
})

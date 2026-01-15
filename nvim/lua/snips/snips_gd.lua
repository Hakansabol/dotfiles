local ls = require 'luasnip'

ls.add_snippets('gdscript', {
  -- Variables, Exports
  -- [Ex]port [V]ariable
  ls.parser.parse_snippet(
    'ex',
    [[
	@export var ${1:name} 
	]]
  ),
  -- [Ex]port [G]roup
  ls.parser.parse_snippet(
    'exg',
    [[
	@export_group("$1")
	]]
  ),
  -- [Ex]port [C]ategory
  ls.parser.parse_snippet(
    'exc',
    [[
	@export_category("${1:label}")
	]]
  ),
  -- [Ex]port Tool [B]utton
  ls.parser.parse_snippet(
    'exb',
    [[
	@export_tool_button("${1:label}", "Callable") var ${2:name} = ${3:callable}
	]]
  ),
})

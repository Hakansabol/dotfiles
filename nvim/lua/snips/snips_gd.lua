local ls = require 'luasnip'

ls.add_snippets('gdscript', {
  -- Variables, Exports
  -- [V]ariable [I]nteger
  ls.parser.parse_snippet(
    'vi',
    [[
	var ${1:name}: int = ${2:0}
	]]
  ),
  -- [V]ariable [F]loat
  ls.parser.parse_snippet(
    'vf',
    [[
	var ${1:name}: float = ${2:0.0}
	]]
  ),
  ls.parser.parse_snippet(
    'vb',
    [[
	var ${1:name}: bool = ${2:false}
	]]
  ),
  ls.parser.parse_snippet(
    'vv2',
    [[
	var ${1:name}: Vector2 = Vector2(${2:0}, ${3:0})
	]]
  ),
  ls.parser.parse_snippet(
    'vv3',
    [[
	var ${1:name}: Vector3 = Vector3(${2:0}, ${3:0}, ${3:0})
	]]
  ),
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

  -- Traditional shorthand
  ls.parser.parse_snippet(
    'v2',
    [[
	Vector2(${1:0}, ${2:0})
	]]
  ),

  -- Vector2 zero constant value
  ls.parser.parse_snippet(
    'v2z',
    [[
	Vector2.ZERO
	]]
  ),

  ls.parser.parse_snippet(
    'v3',
    [[
	Vector3(${1:0}, ${2:0}, ${3:0})
	]]
  ),

  -- Methods
  ls.parser.parse_snippet(
    'ac',
    [[
	Input.is_action_pressed("${1:action}")
	]]
  ),
  ls.parser.parse_snippet(
    'acj',
    [[
	Input.is_action_just_pressed("${1:action}")
	]]
  ),
  ls.parser.parse_snippet(
    'vmouse',
    [[
	var mouse_position := get_viewport().get_mouse_position()
	]]
  ),
})

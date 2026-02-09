local ls = require 'luasnip'

-- lua style snippets
local s = ls.s
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmt
local rep = require('luasnip.extras').rep

ls.add_snippets('gdscript', {
  --  lua style snippets demo
  --  s(
  --    'lss',
  --    fmt(
  --      [[
  -- lua style snippets: {}
  -- ]],
  --      { i(1, 'name') }
  --    )
  --  ),

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
  -- [V]ariable [B]ool
  ls.parser.parse_snippet(
    'vb',
    [[
	var ${1:name}: bool = ${2:false}
	]]
  ),
  -- [V]ariable [V]ector2
  ls.parser.parse_snippet(
    'vv2',
    [[
	var ${1:name}: Vector2 = Vector2(${2:0}, ${3:0})
	]]
  ),
  -- [V]ariable [V]ector3
  ls.parser.parse_snippet(
    'vv3',
    [[
	var ${1:name}: Vector3 = Vector3(${2:0}, ${3:0}, ${4:0})
	]]
  ),
  -- [V]ariable [A]rray
  ls.parser.parse_snippet(
    'va',
    [[
	var ${1:name}: Array = [$2]
	]]
  ),
  -- [Ex]port Variable
  ls.parser.parse_snippet(
    'ex',
    [[
	@export var ${1:name}
	]]
  ),
  -- [Ex]port [B]oolean
  ls.parser.parse_snippet(
    'exb',
    [[
	@export var ${1:name}: bool
	]]
  ),
  -- [Ex]port [I]nt
  ls.parser.parse_snippet(
    'exi',
    [[
	@export var ${1:name}: int = ${2:0}
	]]
  ),
  -- [Ex]port [F]loat
  ls.parser.parse_snippet(
    'exf',
    [[
	@export var ${1:name}: float = ${2:0.0}
	]]
  ),
  -- [V]ariable [V]ector2
  ls.parser.parse_snippet(
    'exv2',
    [[
	@export var ${1:name}: Vector2 = Vector2(${2:0}, ${3:0})
	]]
  ),
  -- [V]ariable [V]ector3
  ls.parser.parse_snippet(
    'exv3',
    [[
	@export var ${1:name}: Vector3 = Vector3(${2:0}, ${3:0}, ${4:0})
	]]
  ),
  -- [Ex]port [N]ode
  ls.parser.parse_snippet(
    'exn',
    [[
	@export var ${1:name}: PackedScene
	]]
  ),
  -- [Ex]port [A]rray
  ls.parser.parse_snippet(
    'exa',
    [[
	@export var ${1:name}: Array = []
	]]
  ),
  -- [Ex]port [T]exture2D
  ls.parser.parse_snippet(
    'ext',
    [[
	@export var ${1:name}: Texture2D = ${2:0.0}
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
  -- [Ex]port [T]ool [B]utton
  ls.parser.parse_snippet(
    'extb',
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

  -- [F]u[n]ction
  ls.parser.parse_snippet(
    'fn',
    [[
	func ${1:name}($2) -> ${3:void}:
	]]
  ),

  ls.parser.parse_snippet(
    'cn',
    [[
	class_name $1
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
  ls.parser.parse_snippet(
    'twait',
    [[
	func wait(seconds: float) -> void:
		await get_tree().create_timer(seconds).timeout
	]]
  ),
})

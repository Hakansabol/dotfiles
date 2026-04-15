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
  ls.parser.parse_snippet(
    'zeratosthenes_nprimes',
    [[/// ztemplate: Sieve of Eratosthenes [first n primes]
/// cnt: the number of primes to find, starting with `1`.
fn eratosthenes(cnt: usize) -> Vec<u64> {
    assert!(cnt <= 1001000, "cnt too large for the sieve (> 1.001M)");
    let mut sieve: Vec<bool> = vec![false; cnt * 16]; // the sieve could be a vector of u8 for memory efficiency.
    let mut basin: Vec<u64> = vec![]; // the basin is the output where the primes fall into.
    let mut point: u64 = 2; // The point is the point that the sieve is currently at.
    while (basin.len() < cnt) {
        // if this item is not flagged
        if !sieve[point as usize] {
            basin.push(point);
            // update the sieve
            let mut sieve_point = point;
            while sieve_point < sieve.len() as u64 {
                sieve[sieve_point as usize] = true;
                sieve_point += point;
            }
        }
        // next number
        point += 1;
    }
    basin
}]]
  ),
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
	println!("{}", <>);
	  ]],
      {
        i(1, 'n'),
      },
      {
        delimiters = '<>',
      }
    )
  ),
  -- variable output
  s(
    '>v', -- output [V]ector
    fmt(
      [[
	let {} = {}.iter().map(|x| x.to_string()).collect::<Vec<String>>().join(" ");
	println!("{{}}", {})
		]],
      { i(2, 'out'), i(1, 'nums'), rep(2) }
    )
  ),
  -- variable declaration
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
})

local ls = require 'luasnip'

ls.add_snippets('cpp', {
  -- Variables

  -- Note that snippets with leaders are loaded first, to give them priority when matching and prevent conflicts between '<vi' and 'vi'.

  -- <Input [I]nt
  ls.parser.parse_snippet(
    '<i',
    [[
	int ${1:n};
	cin >> ${1:n};
	]]
  ),

  -- <Input [S]tring
  ls.parser.parse_snippet(
    '<s',
    [[
	string ${1:s};
	cin >> ${1:s};
	]]
  ),

  -- <Input [V]ector of [I]ntegers
  ls.parser.parse_snippet(
    '<vi',
    [[
	vector<int> ${1:nums}(${2:n}, 0);
	for (auto& it : ${1:nums}) {
		cin >> it;
	}
	]]
  ),

  -- <Input [V]ector of [S]trings
  ls.parser.parse_snippet(
    '<vs',
    [[
	vector<string> ${1:nums}(${2:n}, "");
	for (auto& it : ${1:nums}) {
		cin >> it;
	}
	]]
  ),

  -- >Output [V]ector
  ls.parser.parse_snippet(
    '>v',
    [[
	for (auto a : ${1:ans}) cout << a << ' ';
	cout << endl;
	]]
  ),

  -- [V]ector of [V]ector of [I]ntegers (i32)
  ls.parser.parse_snippet(
    'vvi',
    [[
	vector<vector<int>> ${1:nums}(${2:n}, vector<int>(${3:m}, 0));
	]]
  ),
  -- [V]ector of [I]ntegers (i32)
  ls.parser.parse_snippet(
    'vi',
    [[
	vector<int> ${1:nums} {};
	]]
  ),

  -- [V]ector of [S]trings
  ls.parser.parse_snippet(
    'vs',
    [[
	vector<string> ${1:data} {};
	]]
  ),

  -- push space
  ls.parser.parse_snippet(
    "''",
    [[
	<< ' ' << 
	]]
  ),

  -- Control

  -- [For] [i] in range
  ls.parser.parse_snippet(
    'fori',
    [[
	for (int ${1:i} = 0; ${1:i} < ${2:n}; ${1:i} ++) {
		$3
	}
	]]
  ),

  -- [For] [a] in vector
  ls.parser.parse_snippet(
    'fora',
    [[
	for (auto ${1:a} : ${2:arr}) {
		$3
	}
	]]
  ),

  -- Templates: Full file boilerplate

  -- Template: [C]ode[f]orces
  ls.parser.parse_snippet(
    'zcodeforces',
    [[
	#include <iostream>
	#include <vector>
	using namespace std;

	using lli = long long int;

	int main(int argc, char* argv[])
	{
		int t;
		cin >> t;
		while (t--) {
			$1
		}
		return 0;
	}
	]]
  ),

  -- Template: C++/[CPP]
  ls.parser.parse_snippet(
    'zmain',
    [[
	#include <iostream>
	using namespace std;

	int main(int argc, char* argv[])
	{
		${1:cout << "Hello, world!";}
		return 0;
	}
	]]
  ),

  -- Algorithms: Full reusable algorithms

  -- Sieve of eratosthenes [c++, std]
  ls.parser.parse_snippet(
    'eratosthenes',
    [[
		vector<int> tprimes {};
		vector<bool> sieve($1+1,true);
		for (int i = 2 ; i <= $1 ; i ++) {
			if (sieve[i]) {
				tprimes.push_back(i);
				for (int j = i ; j <= $1 ; j += i) sieve[j] = false;
			}
		}
			]]
  ),

  -- Is Palindrome two-pointer implementation [c++, std]
  ls.parser.parse_snippet(
    'ispalindrome',
    [[
    bool isPalindrome(string s) {
        int n = s.size();
        for (int i = 0 ; i <= n / 2 ; i ++) {
            if (s[i] != s[n-i-1]) return false;
        }
        return true;
    }
			]]
  ),
})

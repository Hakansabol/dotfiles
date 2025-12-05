-- Tools for working with c++
function compile_and_run_cpp()
  vim.api.nvim_command 'T gcc % -std=c++23 -finput-charset=UTF-8'
  vim.api.nvim_command 'T ./a.out'
end

vim.keymap.set('n', '<leader>rC', compile_and_run_cpp, { desc = 'Compile and [R]un [C]++: g++23' })

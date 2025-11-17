-- Tools for working with Python
function compile_and_run_python()
  vim.api.nvim_command 'T python3 %'
end

vim.keymap.set('n', '<leader>rp', compile_and_run_python, { desc = 'Compile and [R]un [P]ython: python3' })

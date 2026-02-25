-- auto update when exiting insert mode
-- improves `rust-analyzer` experience
vim.api.nvim_buf_set_keymap(0, 'i', '<Esc>', '<Esc><Cmd>update<CR>', { silent = true })

-- ##################
-- language functions
-- ##################
local function getl()
  return vim.api.nvim_get_current_line()
end

local function setl(s)
  vim.api.nvim_set_current_line(s)
end

-- [L]anguage tools: Toggle [m]ut
-- TODO: make this work on the current symbol, such as in a function parameter declaration.
vim.keymap.set('n', '<leader>lm', function()
  -- get the current line
  local l = getl()

  -- remove mut keyword if present
  local fmut = string.find(l, 'mut ')
  local flet = string.find(l, 'let ')
  if fmut then
    l = l:sub(0, fmut - 1) .. l:sub(fmut + 4)
  elseif flet then
    l = l:sub(0, flet + 3) .. 'mut ' .. l:sub(flet + 4)
  else
    vim.notify('No effect. "' .. l .. '"')
  end

  setl(l)
end, { desc = 'Toggle [M]ut in line let statement' })

-- ################
-- language inserts
-- ################

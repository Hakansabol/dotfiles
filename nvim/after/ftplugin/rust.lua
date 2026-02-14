-- auto update when exiting insert mode
-- improves `rust-analyzer` experience
vim.api.nvim_buf_set_keymap(0, 'i', '<Esc>', '<Esc><Cmd>update<CR>', { silent = true })

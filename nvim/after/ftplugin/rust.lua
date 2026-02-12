-- auto update when exiting insert mode
-- improves `rust-analyzer` experience
vim.keymap.set({ 'i' }, '<Esc>', '<Esc><Cmd>update<CR>', { silent = true })

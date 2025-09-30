local home = os.getenv 'HOME'
local path_to_download = home .. '/dotfiles/dependencies/omnisharp/OmniSharp.exe'
print(path_to_download)

vim.lsp.config['omnisharp'] = {
  cmd = { 'mono', path_to_download },
  root_markers = { '.csproj', 'Assembly-CSharp.csproj' },
  filetypes = { 'cs' },
}

vim.lsp.enable 'omnisharp'

--vim.lsp.config.omnisharp.setup {
--cmd = {
--'mono',
--path_to_download,
--},
---- Assuming you have an on_attach function. Delete this line if you don't.
----   on_attach = on_attach,
--use_mono = true,
--}

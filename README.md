# windows install kickstart dependencies
choco install -y neovim git ripgrep wget fd unzip gzip mingw make

Treesitter may fail. If it does, run `:TSUninstall all` and then run `nvim` in cmd.exe
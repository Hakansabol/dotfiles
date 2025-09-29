# windows install 
```
choco install -y neovim git ripgrep wget fd unzip gzip mingw make
```

also install cmake via installer

Treesitter may fail. If it does, run `:TSUninstall all` and then run `nvim` in cmd.exe

# ubuntu via wsl install
```
sudo apt upgrade
sudo apt install gzip cmake make gcc unzip
git clone https://github.com/Hakansabol/dotfiles ~/dotfiles/
sudo apt install python3.12-venv
```

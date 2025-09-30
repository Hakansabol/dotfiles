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

Install win32yank via elevated powershell
```
choco install win32yank -y
```

## .bashrc Setup
```
# PATH SETUP
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="$PATH:/mnt/c/ProgramData/chocolatey/lib/win32yank/tools"

# EXTRAS
export C="/mnt/c/"
export G="/mnt/c/Users/Hakan/Github/"
```

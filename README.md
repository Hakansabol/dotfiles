# windows install 
```
choco install -y git ripgrep wget fd unzip gzip mingw make
```

Treesitter may fail. If it does, run `:TSUninstall all` and then run `nvim` in cmd.exe

# ubuntu via wsl install
```
sudo apt upgrade
sudo apt install gzip cmake make gcc unzip
git clone https://github.com/Hakansabol/dotfiles ~/dotfiles/
sudo apt install python3.12-venv
```

# Neovim Install
This config requires Neovim >=0.11.
Package managers do not ship latest, so build it from source as specified:
```https://github.com/neovim/neovim/blob/master/BUILD.md```

## .bashrc Setup
```
# PATH SETUP
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
```

# Roslyn LSP Setup
https://github.com/dotnet/roslyn
https://github.com/seblyng/roslyn.nvim

1. Install dotnet latest
https://dotnet.microsoft.com/en-us/download

1a. Ensure `dotnet` command is available on PATH

2. Install roslyn lsp via Mason
```:MasonInstall roslyn```

3. Open a `.cs` file. Test and debug via `:LspInfo` and/or `:LspLog`

# GDScript LSP Setup
source: https://www.youtube.com/watch?v=B6UahV8gVo0
Set `Auto Reload Scripts on External Change` to `On` in Godot > Editor Settings > Text Editor > Behavior >

Windows Specific
Install winget from Microsoft Store and run `winget install nmap`

The LSP may not attach automatically. If it does not appear in `:LspInfo`, try running `:LspStart` while editing a `.gd` file.

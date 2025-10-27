choco install -y git ripgrep wget fd unzip gzip mingw make
```

Treesitter may fail. If it does, run `:TSUninstall all` and then run `nvim` in cmd.exe

# ubuntu via wsl install
```
sudo apt upgrade
sudo apt install gzip cmake make gcc unzip python3.12-venv
git clone https://github.com/Hakansabol/dotfiles ~/dotfiles/
```

# Arch install
```
sudo pacman -S sof-firmware waybar otf-font-awesome

mkdir ~/.config
# install neovim dependencies
sudo pacman -S gzip cmake make gcc ripgrep clang lua
ln ~/dotfiles/nvim/ ~/.config/nvim -sd

sudo pacman -S sudo git fastfetch 

# install niri
sudo pacman -S niri ghostty rofi fuzzel
ln ~/dotfiles/niri/ ~/.config/niri -sd

# more stuff
sudo pacman -S dolphin firefox discord 

# yazi + dependencies
sudo yazi pacman -S ffmpeg jq poppler fd ripgrep fzf zoxide xclip
ln ~/dotfiles/yazi/ ~/.config/yazi -sd
```

# Neovim Install
This config requires Neovim >=0.11.
Package managers may not ship latest, so build it from source as specified:
```https://github.com/neovim/neovim/blob/master/BUILD.md```

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

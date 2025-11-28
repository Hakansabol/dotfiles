# pre install essentials
sudo pacman --noconfirm -S sudo
sudo pacman --noconfirm -S vi
sudo pacman --noconfirm -S vim
sudo pacman --noconfirm -S nano
sudo pacman --noconfirm -S git
sudo pacman --noconfirm -S linux-firmware
sudo pacman --noconfirm -S dhcpcd
sudo pacman --noconfirm -S networkmanager
sudo pacman --noconfirm -S base-devel
sudo pacman --noconfirm -S less
sudo pacman --noconfirm -S which
# install fonts
sudo pacman --noconfirm -S noto-fonts
sudo pacman --noconfirm -S noto-fonts-cjk
sudo pacman --noconfirm -S otf-font-awesome
# install niri
sudo pacman --noconfirm -S xdg-desktop-portal-gnome
sudo pacman --noconfirm -S niri
sudo pacman --noconfirm -S ghostty
sudo pacman --noconfirm -S rofi
sudo pacman --noconfirm -S fuzzel
sudo pacman --noconfirm -S swww
sudo pacman --noconfirm -S libinput
sudo pacman --noconfirm -S mako
sudo pacman --noconfirm -S waybar
sudo pacman --noconfirm -S xwayland-sattelite
sudo pacman --noconfirm -S sof-firmware
sudo pacman --noconfirm -S waybar
sudo pacman --noconfirm -S xorg-server
sudo pacman --noconfirm -S brightnessctl
sudo pacman --noconfirm -S dialog
sudo pacman --noconfirm -S font-manager
sudo pacman --noconfirm -S fastfetch
sudo pacman --noconfirm -S pulseaudio
sudo pacman --noconfirm -S dolphin
# install neovim
sudo pacman --noconfirm -S neovim
sudo pacman --noconfirm -S gzip
sudo pacman --noconfirm -S cmake
sudo pacman --noconfirm -S make
sudo pacman --noconfirm -S gcc
sudo pacman --noconfirm -S ripgrep
sudo pacman --noconfirm -S clang
sudo pacman --noconfirm -S lua
sudo pacman --noconfirm -S xclip
sudo pacman --noconfirm -S wl-clipboard
sudo pacman --noconfirm -S unzip
sudo pacman --noconfirm -S nmap
# install extras
sudo pacman --noconfirm -S yazi
sudo pacman --noconfirm -S zsh
sudo pacman --noconfirm -S ffmpeg
sudo pacman --noconfirm -S jq
sudo pacman --noconfirm -S poppler
sudo pacman --noconfirm -S fd
sudo pacman --noconfirm -S ripgrep
sudo pacman --noconfirm -S fzf
sudo pacman --noconfirm -S zoxide
sudo pacman --noconfirm -S xclip
sudo pacman --noconfirm -S 7zip
sudo pacman --noconfirm -S python
sudo pacman --noconfirm -S python-pip
sudo pacman --noconfirm -S man-db
sudo pacman --noconfirm -S firefox
sudo pacman --noconfirm -S fd
sudo pacman --noconfirm -S starship

sudo systemctl enable --now dhcpcd
sudo systemctl enable --now NetworkManager

# link configuration
mkdir ~/.config
ln ~/dotfiles/nvim/ ~/.config/nvim -sd
ln ~/dotfiles/niri/ ~/.config/niri -sd
ln ~/dotfiles/yazi/ ~/.config/yazi -sd
ln ~/dotfiles/waybar/ ~/.config/waybar -sd
ln ~/dotfiles/ghostty/ ~/.config/ghostty -sd

# ghostty setup
rm ~/.bashrc
ln ~/dotfiles/.bashrc ~/.bashrc -s
ln ~/dotfiles/.zshrc ~/.zshrc -s
ln ~/dotfiles/starship.toml ~/.config/starship.toml

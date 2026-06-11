# pre install essentials
sudo pacman --noconfirm -Sy sudo vi vim nano git linux-firmware dhcpcd networkmanager base-devel less which
# install fonts
sudo pacman --noconfirm -S noto-fonts noto-fonts-cjk otf-font-awesome
# install niri
sudo pacman --noconfirm -S xdg-desktop-portal-gnome niri ghostty rofi fuzzel awww libinput mako waybar xwayland-satellite sof-firmware xorg-server brightnessctl dialog font-manager fastfetch pulseaudio dolphin nautilus ark
# install neovim
sudo pacman --noconfirm -S neovim gzip cmake make gcc ripgrep clang lua xclip wl-clipboard unzip nmap
# install extras
sudo pacman --noconfirm -S yazi zsh ffmpeg jq poppler fd ripgrep fzf zoxide xclip 7zip python python-pip man-db firefox fd starship
sudo pacman --noconfirm -S alacritty kitty btop powertop ntp usbutils tree
sudo pacman -S strawberry syncthing

# enable services if not already
sudo systemctl enable --now dhcpcd
sudo systemctl enable --now NetworkManager
sudo systemctl enable ntpdate

# link configurations one by one
# TODO: link entire .config and git add individually
mkdir ~/.config
ln ~/dotfiles/nvim/ ~/.config/nvim -sd
ln ~/dotfiles/niri/ ~/.config/niri -sd
ln ~/dotfiles/yazi/ ~/.config/yazi -sd
ln ~/dotfiles/waybar/ ~/.config/waybar -sd
ln ~/dotfiles/ghostty/ ~/.config/ghostty -sd
ln ~/dotfiles/fuzzel/ ~/.config/fuzzel -sd
ln ~/dotfiles/godot/ ~/.config/godot -sd

# terminal setup
rm ~/.bashrc
ln ~/dotfiles/.bashrc ~/.bashrc -s
ln ~/dotfiles/.zshrc ~/.zshrc -s
ln ~/dotfiles/starship.toml ~/.config/starship.toml -s

# fix niri
touch ~/.config/niri/custom.kdl

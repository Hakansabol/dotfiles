# pre install essentials
pacman -Sy sudo vi vim nano git
# install essentials
sudo pacman -S networkmanager base-devel less which
# install fonts
sudo pacman -S noto-fonts noto-fonts-cjk otf-font-awesome
# install niri
sudo pacman -S niri ghostty rofi fuzzel swww libinput mako waybar xwayland-sattelite sof-firmware waybar xorg-server brightnessctl dialog font-manager fastfetch pulseaudio dolphin
# install neovim
sudo pacman -S neovim gzip cmake make gcc ripgrep clang lua xclip wl-clipboard unzip nmap
# install extras
sudo pacman -S yazi zsh ffmpeg jq poppler fd ripgrep fzf zoxide xclip 7zip python python-pip man-db firefox fd starship


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

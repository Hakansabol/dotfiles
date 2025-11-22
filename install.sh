# pre install essentials
sudo pacman -Sy sudo
sudo pacman -Sy vi
sudo pacman -Sy vim
sudo pacman -Sy nano
sudo pacman -Sy git
sudo pacman -Sy linux-firmware
sudo pacman -Sy dhcpcd
sudo pacman -Sy networkmanager
sudo pacman -Sy base-devel
sudo pacman -Sy less
sudo pacman -Sy which
# install fonts
sudo pacman -Sy noto-fonts
sudo pacman -Sy noto-fonts-cjk
sudo pacman -Sy otf-font-awesome
# install niri
sudo pacman -Sy xdg-desktop-portal-gnome
sudo pacman -Sy niri
sudo pacman -Sy ghostty
sudo pacman -Sy rofi
sudo pacman -Sy fuzzel
sudo pacman -Sy swww
sudo pacman -Sy libinput
sudo pacman -Sy mako
sudo pacman -Sy waybar
sudo pacman -Sy xwayland-sattelite
sudo pacman -Sy sof-firmware
sudo pacman -Sy waybar
sudo pacman -Sy xorg-server
sudo pacman -Sy brightnessctl
sudo pacman -Sy dialog
sudo pacman -Sy font-manager
sudo pacman -Sy fastfetch
sudo pacman -Sy pulseaudio
sudo pacman -Sy dolphin
# install neovim
sudo pacman -Sy neovim
sudo pacman -Sy gzip
sudo pacman -Sy cmake
sudo pacman -Sy make
sudo pacman -Sy gcc
sudo pacman -Sy ripgrep
sudo pacman -Sy clang
sudo pacman -Sy lua
sudo pacman -Sy xclip
sudo pacman -Sy wl-clipboard
sudo pacman -Sy unzip
sudo pacman -Sy nmap
# install extras
sudo pacman -Sy yazi
sudo pacman -Sy zsh
sudo pacman -Sy ffmpeg
sudo pacman -Sy jq
sudo pacman -Sy poppler
sudo pacman -Sy fd
sudo pacman -Sy ripgrep
sudo pacman -Sy fzf
sudo pacman -Sy zoxide
sudo pacman -Sy xclip
sudo pacman -Sy 7zip
sudo pacman -Sy python
sudo pacman -Sy python-pip
sudo pacman -Sy man-db
sudo pacman -Sy firefox
sudo pacman -Sy fd
sudo pacman -Sy starship

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

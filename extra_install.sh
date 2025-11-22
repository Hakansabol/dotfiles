# Slightly more dangerous install script

# Rebind capslock (scancode 3a) to escape (keycode 1)
sudo ln ~/dotfiles/customstart.service /etc/systemd/system/customstart.service -s
systemctl enable --now customstart

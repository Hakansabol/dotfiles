if ps -e | grep waybar > /dev/null
then
	pkill waybar
else
	DISPLAY=:1 WAYLAND_DISPLAY=wayland-1 waybar & disown
fi

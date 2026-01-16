if ps -e | grep waybar > /dev/null
then
	pkill waybar
else
	waybar & disown
fi

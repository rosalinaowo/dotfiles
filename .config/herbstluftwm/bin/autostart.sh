#!/usr/bin/env bash

# Kill all running instances
_ps=(picom dunst xfce4-power-manager unclutter discord polybar)
for _prs in "${_ps[@]}"; do
	if [[ 'pidof ${_prs}' ]]; then
		killall -9 ${_prs}
	fi
done

# Power managment
xfce4-power-manager &

# Compositor
picom --experimental-backends &

# Wallpaper
nitrogen --restore &

# Notification daemon
dunst -config ~/.config/herbstluftwm/dunstrc &

# Mouse thingy
unclutter &

# Polybar
~/.config/herbstluftwm/bin/polybar.sh

# Discord
discord &

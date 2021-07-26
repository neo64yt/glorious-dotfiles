#!/bin/sh

# This script loads common autostart applications for all WM

# Autostart applications

# Background daemons first
pipewire-runner &
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
picom --experimental-backend &
/usr/bin/dunst &
pcmanfm --daemon-mode &
$LOCK &
udiskie &
sxhkd -c $KEYBIND &
xrdb -merge $XDG_CONFIG_HOME/Xresources &
xclickroot -r $STARTMENU &
geary --gapplication-service &

# Systray
# Bluetooth is disabled due to vulnerabilities
(sleep 3s && nm-applet) & 
#(sleep 3s && blueman-applet) &
(sleep 3s && mate-power-manager) &
(sleep 3s && mictray) &
(sleep 3s && pnmixer) &
(sleep 3s && /usr/bin/octopi-notifier) &



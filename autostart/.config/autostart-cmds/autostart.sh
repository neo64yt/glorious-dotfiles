#!/bin/sh

#################################
#       Autostart (Global)      #
#################################

# XDG Autostart
# To prevent autostarting a program using XDG autostart, create an empty desktop file for that program in $XDG_CONFIG_HOME/autostart/
dex -a &

# Daemons 
#pipewire-runner &
#picom --experimental-backends &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
xsettingsd --config=$XDG_CONFIG_HOME/xsettingsd/xsettingsd.conf &
xcompmgr -c -f -F -o 0 -I 0.13 -O 0.13 -D 25 &
dunst &
thunar --daemon &
xss-lock --ignore-sleep -- $LOCKER &
xscreensaver -nosplash &
sxhkd -c $KEYBIND &
xrdb -merge $XDG_CONFIG_HOME/Xresources &
#mpd &
unclutter --start-hidden &

# Systray
volumeicon &
kdeconnect-indicator &

# XInput settings
xinput set-prop "PixArt USB Optical Mouse" "libinput Middle Emulation Enabled" 1 # Enable middle click


# vim: ft=sh

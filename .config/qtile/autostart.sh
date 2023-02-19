#!/bin/sh

xinput --set-prop "Wings Tech Xtrfy M42" "Coordinate Transformation Matrix" 0.5 0 0 0 0.5 0 0 0 1

xrandr --auto --output DVI-D-0 --mode 1280x1024 --left-of DisplayPort-1
xrandr --output DisplayPort-1 --primary --mode 1920x1080 --rate 144 --right-of DVI-D-0

pactl set-default-sink alsa_output.usb-Logitech_Logitech_G430_Gaming_Headset-00.analog-stereo
pactl set-default-source alsa_input.usb-Logitech_Logitech_G430_Gaming_Headset-00.mono-fallback

redshift &

#~/.fehbg &
#nm-applet &
#mictray &
#pasystray &
picom &

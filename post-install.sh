#!/bin/bash

# Installing all necessery packages

sudo zypper install qutebrowser xviewer discord steam mpv htop neofetch ranger kitty wine lutris picom redshift xarchiver opi 7zip libreoffice xrandr xset xinput sensors pavucontrol playerctl python310-adblock

opi spotify-easyrpm

spotify-easyrpm --set-channel edge

spotify-easyrpm

opi spotify-adblock

opi j4-dmenu-desktop

opi cpu-x

opi qt5-webengine-widevine

# Moving config files

cp -r .config ~/

cp -r .fonts ~/ 

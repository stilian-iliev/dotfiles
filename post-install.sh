#!/bin/bash

# Installing all necessery packages

read -p "Install packages?(y/n)" pcg
if [ $pcg = "y" ] 
then
	sudo zypper install qutebrowser xviewer discord steam mpv htop neofetch ranger wine lutris picom redshift xarchiver opi 7zip libreoffice xrandr xset xinput sensors pavucontrol playerctl python310-adblock cpu-x dmenu
fi

read -p "Install spotify? (y/n)" spotify
if [ $spotify = "y" ]
then
	opi spotify-easyrpm
	spotify-easyrpm --set-channel edge
	spotify-easyrpm
	opi spotify-adblock
fi

opi j4-dmenu-desktop

opi qt5-webengine-widevine

# Moving config files

read -p "Replace config files?(y/n)" rplc

if [ $rplc = "y" ]
then
	cp -r .config ~/

	cp -r .fonts ~/ 
fi

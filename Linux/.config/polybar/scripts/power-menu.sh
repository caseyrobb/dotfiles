#!/bin/bash
#
# Simple script to handle a DIY shutdown menu
#
# Requirements:
# - rofi
# - systemd

chosen=$(echo -e "[Cancel]\nLogout\nSuspend\nHibernate\nShutdown\nReboot System" | rofi -config ~/.config/rofi/power.rasi -dmenu -i -p "Power Menu:")

if [[ $chosen = "Logout" ]]; then
	systemctl --user exit
elif [[ $chosen = "Suspend" ]]; then
	sudo systemctl suspend
elif [[ $chosen = "Hibernate" ]]; then
	sudo systemctl hibernate
elif [[ $chosen = "Shutdown" ]]; then
	sudo poweroff
elif [[ $chosen = "Reboot System" ]]; then
	sudo reboot
fi

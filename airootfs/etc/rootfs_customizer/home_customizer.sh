#!/bin/zsh
# Specify user to execute customizer process as
LIVEOSUSER=liveuser

# Customization: Set up GTK4/libadwaita themes
cd /home/${LIVEOSUSER}/.themes/flat-remix-gtk-odysenui-dark/
chmod +x install.sh
./install.sh
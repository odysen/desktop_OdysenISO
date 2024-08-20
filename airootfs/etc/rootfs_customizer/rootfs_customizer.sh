#!/bin/zsh
# Prepares ISO for packaging

# Add a liveOS user
ROOTPASS="config"

# Password: root
echo -e "${ROOTPASS}\n${ROOTPASS}" | passwd root

# Enable GDM (GNOME Display Manager) service and NetworkManager
systemctl enable gdm NetworkManager

# Recompile schemas
glib-compile-schemas /usr/share/glib-2.0/schemas
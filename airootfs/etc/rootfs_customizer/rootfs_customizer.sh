#!/bin/zsh
# Prepares ISO for packaging

# Add a liveOS user
ROOTPASS="config"
LIVEOSUSER="liveuser"

# Password: root
echo -e "${ROOTPASS}\n${ROOTPASS}" | passwd root

# Add 'liveuser' and set its password
useradd --create-home ${LIVEOSUSER}; echo -e "${ROOTPASS}\n${ROOTPASS}" | passwd ${LIVEOSUSER}

# Configure 'sudoers.d' for 'liveuser'
chmod 0440 /etc/sudoers.d/${LIVEOSUSER}
echo "${LIVEOSUSER} ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/${LIVEOSUSER}

# Add necessary groups to 'liveuser'
usermod -aG wheel,rfkill ${LIVEOSUSER}

# Enable GDM (GNOME Display Manager) service
systemctl enable gdm

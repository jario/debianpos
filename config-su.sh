#!/bin/bash
#Com SU

#sudoers
echo "%jario ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# grub config sck.mode=skip GRUB_CMDLINE_LINUX="locale=pt_BR"

apt remove plymouth-theme-ubuntu-text -y

sed --in-place 's/GRUB_TIMEOUT=10/GRUB_TIMEOUT=3/g' /etc/default/grub
sed --in-place 's/#GRUB_GFXMODE=640x480/GRUB_GFXMODE=640x480/g' /etc/default/grub
sed --in-place 's/#GRUB_TERMINAL=console/GRUB_TERMINAL=console/g' /etc/default/grub
sed --in-place 's/GRUB_TIMEOUT=10/GRUB_TIMEOUT=3/g' /etc/default/grub

update-grub

echo "vm.swappiness=10" >> /etc/sysctl.conf


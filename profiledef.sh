#!/usr/bin/env bash
# shellcheck disable=SC2034

#if [ -n "$CI" ]; then
#   IMGNAME="_ci_roller"
#else
#   IMGNAME="_homemade"
#fi
IMGNAME="_internal"
iso_name="odysendesktop"
iso_label="ODYSEN_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)$IMGNAME"
iso_publisher="Odysen <https://odysen.space>"
iso_application="Odysen Desktop Live/Rescue ISO"
iso_version="starman_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)" # bringup 1.0 codename starman
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.systemd-boot.esp' 'uefi-x64.systemd-boot.esp'
           'uefi-ia32.systemd-boot.eltorito' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.gnupg"]="0:0:700"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
)

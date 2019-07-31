#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:7338da12c89ae8e171af64ad429e6ec140aada75; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:cde435ea4353e880a17c295c50dbe294d6fb2507 EMMC:/dev/block/bootdevice/by-name/recovery 7338da12c89ae8e171af64ad429e6ec140aada75 67108864 cde435ea4353e880a17c295c50dbe294d6fb2507:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:f586517f0d7700abb6556d7e3215cb19a66ca64a; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:d5b0e53a74ebfbaaac10f7904899f1d594fecafe EMMC:/dev/block/platform/bootdevice/by-name/recovery f586517f0d7700abb6556d7e3215cb19a66ca64a 33554432 d5b0e53a74ebfbaaac10f7904899f1d594fecafe:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

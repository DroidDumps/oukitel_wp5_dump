#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:6a0c0cf33042422f7885a0178edd62d80bd3e11a; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:4e37aaa41fab482bb56f6cf1ddda06fc9b68a7ec EMMC:/dev/block/platform/bootdevice/by-name/recovery 6a0c0cf33042422f7885a0178edd62d80bd3e11a 33554432 4e37aaa41fab482bb56f6cf1ddda06fc9b68a7ec:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

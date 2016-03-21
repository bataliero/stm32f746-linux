#!/bin/sh

/bin/mount -t proc proc /proc
/bin/mount -t sysfs sysfs /sys

/bin/mdev -s
/bin/mount /dev/mmcblk0p1 /mnt/sdcard/
exec /bin/switch_root  /mnt/sdcard/ /sbin/init 

/bin/getty 115200 ttyS5

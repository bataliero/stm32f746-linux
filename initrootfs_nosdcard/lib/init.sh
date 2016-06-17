#!/bin/sh

/bin/mount -t proc proc /proc
/bin/mount -t sysfs sysfs /sys

/bin/mdev -s

/bin/getty 115200 ttyS5

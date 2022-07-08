#!/bin/bash

umount /home/ti/ti/                   &>/dev/null
umount /tmp/ti/lower                  &>/dev/null
umount /home/ti/ti.mksquashfs         &>/dev/null

su - ti --command -- "mkdir -p   /tmp/ti/lower" 2>/dev/null
su - ti --command -- "mkdir -p   /tmp/ti/upper" 2>/dev/null
su - ti --command -- "mkdir -p   /tmp/ti/work" 2>/dev/null

if [ "$1" = 'm' -o "$1" = 'mount' ]; then

    echo " ... mount... "
    mount -o noatime,nodiratime,ro   /home/ti/ti.mksquashfs /tmp/ti/lower
    mount -t overlay -o lowerdir=/tmp/ti/lower,upperdir=/tmp/ti/upper,workdir=/tmp/ti/work,noatime,nodiratime  none /home/ti/ti/
else
    echo " ... unmount only ... "

fi


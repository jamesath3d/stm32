#!/bin/bash

############################## stm32 : begin
umount /home/ti/stm32/                   &>/dev/null
umount /tmp/stm32/lower                  &>/dev/null
umount /home/ti/stm32.mksquashfs         &>/dev/null

mkdir -p   /tmp/stm32/lower
mkdir -p   /tmp/stm32/upper
mkdir -p   /tmp/stm32/work

if [ "$1" = 'm' -o "$1" = 'mount' ]; then

    echo " ... mount... stm32 "
    mount -o noatime,nodiratime,ro   /home/ti/stm32.mksquashfs /tmp/stm32/lower
    mount -t overlay -o lowerdir=/tmp/stm32/lower,upperdir=/tmp/stm32/upper,workdir=/tmp/stm32/work,noatime,nodiratime  none /home/ti/stm32/
else
    echo " ... unmount only ... stm32 "

fi
############################## stm32 : end

############################## stm32__git_dir : begin
umount /home/ti/stm32__git_dir/                   &>/dev/null
umount /tmp/stm32__git_dir/lower                  &>/dev/null
umount /home/ti/stm32__git_dir.mksquashfs         &>/dev/null

mkdir -p   /tmp/stm32__git_dir/lower
mkdir -p   /tmp/stm32__git_dir/upper
mkdir -p   /tmp/stm32__git_dir/work

if [ "$1" = 'm' -o "$1" = 'mount' ]; then

    echo " ... mount... stm32__git_dir "
    mount -o noatime,nodiratime,ro   /home/ti/stm32__git_dir.mksquashfs /tmp/stm32__git_dir/lower
    mount -t overlay -o lowerdir=/tmp/stm32__git_dir/lower,upperdir=/tmp/stm32__git_dir/upper,workdir=/tmp/stm32__git_dir/work,noatime,nodiratime  none /home/ti/stm32__git_dir/
else
    echo " ... unmount only ... stm32__git_dir "

fi
############################## stm32__git_dir : end


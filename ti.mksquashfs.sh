#!/bin/bash

dateX1=$(LC_ALL=C date +%Y_%m%d_%H%M%P_%S)

for aa1 in ti
do
    src=${aa1}
    dst=${aa1}_${dateX1}.mksquashfs
    echo "time mksquashfs_example.sh ${src}/ ${dst}"
    time       mksquashfs_example.sh ${src}/ ${dst}
done


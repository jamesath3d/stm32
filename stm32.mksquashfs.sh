#!/bin/bash

dst=stm32.mksquashfs
if [ -f "${dst}" ]
then
    echo
    echo "file (${dst}) exist ! rename it and re-run."
    echo
else
    echo
    time mksquashfs_example.sh stm32/ ${dst}
    echo
fi

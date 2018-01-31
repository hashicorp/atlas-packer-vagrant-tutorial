#!/bin/bash

# Bail if we are not running inside VirtualBox.
echo "Checking if QEmu..."
if [[ `facter virtual` != "qemu" ]]; then
	echo "It seems no ;("
    exit 0
fi

echo "It seems yes ^_^"
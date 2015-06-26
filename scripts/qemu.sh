#!/bin/bash

# Bail if we are not running inside VirtualBox.
if [[ `facter virtual` != "qemu" ]]; then
    exit 0
fi
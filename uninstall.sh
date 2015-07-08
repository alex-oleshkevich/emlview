#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    sudo bash `readlink -f $0`
    exit
fi

rm /usr/bin/emlview
rm /usr/share/applications/emlview.desktop
rm -rf /usr/share/emlview
rm /usr/share/icons/hicolor/*/apps/emlview.svg

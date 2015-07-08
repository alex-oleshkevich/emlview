#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    sudo bash `readlink -f $0`
    exit
fi

BIN=`readlink -f emlview`
DESKTOP=`readlink -f emlview.desktop`
chmod +x $BIN

cp $BIN /usr/bin
cp $DESKTOP /usr/share/applications

if [[ ! -d /usr/share/emlview ]] ; then
    mkdir -p /usr/share/emlview
fi

cp `readlink -f mainwindow.ui` /usr/share/emlview/mainwindow.ui

cp icon.svg /usr/share/icons/hicolor/16x16/apps/emlview.svg
cp icon.svg /usr/share/icons/hicolor/24x24/apps/emlview.svg
cp icon.svg /usr/share/icons/hicolor/32x32/apps/emlview.svg
cp icon.svg /usr/share/icons/hicolor/48x48/apps/emlview.svg
cp icon.svg /usr/share/icons/hicolor/64x64/apps/emlview.svg
cp icon.svg /usr/share/icons/hicolor/96x96/apps/emlview.svg
cp icon.svg /usr/share/icons/hicolor/128x128/apps/emlview.svg
cp icon.svg /usr/share/icons/hicolor/256x256/apps/emlview.svg
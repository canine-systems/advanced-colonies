#!/usr/bin/env sh

mkdir -p .downloads || exit $?
wget https://github.com/juraj-hrivnak/Pakku/releases/latest/download/pakku.jar -O .downloads/pakku.jar || exit $?

#!/bin/bash
set -e

cp ./config/.xmodmap ~/.config/i3/.xmodmap
cp ./i3/config ~/.config/i3/config

fc-cache -fv
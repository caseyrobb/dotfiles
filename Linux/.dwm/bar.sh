#!/bin/sh

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -q -c ~/.config/polybar/config.ini main -r &

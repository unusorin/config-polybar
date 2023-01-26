#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bars
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar -c ${HOME}/.config/polybar/config.ini secondary 2>&1 | tee -a /tmp/polybar-secondary.log & disown
polybar -c ${HOME}/.config/polybar/config.ini secondary-network 2>&1 | tee -a /tmp/polybar-secondary-network.log & disown
polybar -c ${HOME}/.config/polybar/config.ini secondary-workspace 2>&1 | tee -a /tmp/polybar-secondary-workspace.log & disown
polybar -c ${HOME}/.config/polybar/config.ini secondary-filesystem 2>&1 | tee -a /tmp/polybar-secondary-filesystem.log & disown
polybar -c ${HOME}/.config/polybar/config.ini primary-workspace 2>&1 | tee -a /tmp/polybar-primary-workspace.log & disown
polybar -c ${HOME}/.config/polybar/config.ini primary-monitor 2>&1 | tee -a /tmp/polybar-primary-monitor.log & disown
polybar -c ${HOME}/.config/polybar/config.ini primary-clock 2>&1 | tee -a /tmp/polybar-primary-clock.log & disown
polybar -c ${HOME}/.config/polybar/config.ini primary-tray 2>&1 | tee -a /tmp/polybar-primary-tray.log & disown
#polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."

#!/usr/bin/env bash

#chmod +x ~/yopy/.config/polybar/launch.sh 2>/dev/null || chmod +x ~/.config/polybar/launch.sh

# Завершить работу уже запущенных процессов polybar
killall -q polybar

# Ожидание удаления процессов
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Запуск Polybar (замените "example" на имя вашей панели из config.ini)
polybar top &


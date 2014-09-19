@echo off
adb  disconnect localhost:4444
adb -d forward --remove-all
adb kill-server
adb -d forward tcp:4444 localabstract:/adb-hub

adb -d connect localhost:4444
adb forward --list

echo.
echo Wait a second for it to connect . . . .
pause
adb devices

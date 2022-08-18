adb install -r app\build\outputs\apk\debug\app-debug.apk
adb shell su -c "stop"
adb shell su -c "start"
timeout 10
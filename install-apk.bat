adb shell cmd overlay disable com.example.overlaytest
adb install -r app\build\outputs\apk\debug\app-debug.apk
adb shell cmd overlay enable com.example.overlaytest
adb shell su -c "stop"
adb shell su -c "start"
timeout 10
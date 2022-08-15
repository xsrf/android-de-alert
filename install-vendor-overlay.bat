adb push app\build\outputs\apk\debug\app-debug.apk /sdcard
adb shell su -c "mount -o rw,remount /vendor"
adb shell su -c "mkdir /vendor/overlay/com.example.overlaytest/"
adb shell su -c "mv /sdcard/app-debug.apk /vendor/overlay/com.example.overlaytest/"
adb install -r app\build\outputs\apk\debug\app-debug.apk
adb shell cmd overlay enable com.example.overlaytest
adb shell su -c "stop"
adb shell su -c "start"
timeout 10
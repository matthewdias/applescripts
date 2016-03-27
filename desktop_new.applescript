do shell script "/Applications/Mission\\ Control.app/Contents/MacOS/Mission\\ Control"
delay 0.5
tell application "System Events" to click (every button whose value of attribute "AXDescription" is "add desktop") of group 1 of process "Dock"
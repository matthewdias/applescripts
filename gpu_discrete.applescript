#!/usr/bin/osascript

ignoring application responses
	tell application "System Events" to tell process "gfxCardStatus"
		click menu bar item 1 of menu bar 2
	end tell
end ignoring
do shell script "killall System\\ Events"
delay 0.1
tell application "System Events" to tell process "gfxCardStatus"
	tell menu bar item 1 of menu bar 2
		click menu item "Discrete Only" of menu 1
	end tell
end tell

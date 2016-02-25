delay 1

-- Start pomodoro in pomotodo with shortcut
tell application "System Events"
	key code 16 using {control down, command down, option down}
end tell

-- Start FocusTime
ignoring application responses
	tell application "System Events" to tell process "RescueTime"
		click menu bar item 1 of menu bar 2
	end tell
end ignoring

do shell script "killall System\\ Events"

delay 0.1

tell application "System Events" to tell process "RescueTime"
	tell menu bar item 1 of menu bar 2
		click menu item "Get Focused..." of menu 1
	end tell
end tell

tell application "System Events" to tell process "RescueTime"
	click button "Get Focused!" of window 1
end tell

-- Quit distracting apps
tell application "Reeder"
	quit
end tell

tell application "Slack"
	quit
end tell

tell application "Chatty"
	quit
end tell

-- Enter do not disturb
ignoring application responses
    tell application "System Events" to keystroke "D" using {command down, shift down, option down, control down}
end ignoring
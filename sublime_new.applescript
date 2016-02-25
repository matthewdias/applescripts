on appIsRunning(appName)
	tell application "System Events" to (name of processes) contains appName
end appIsRunning

if appIsRunning("Sublime Text") then
	tell application "System Events"
		tell process "Sublime Text" to click menu item "New Window" in menu "File" of menu bar 1
	end tell
else
	tell application "Sublime Text" to activate
end if
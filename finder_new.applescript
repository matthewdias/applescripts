on appIsRunning(appName)
	tell application "System Events" to (name of processes) contains appName
end appIsRunning

tell application "Finder"
	make new Finder window
	activate
end tell
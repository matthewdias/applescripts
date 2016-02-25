on appIsRunning(appName)
	tell application "System Events" to (name of processes) contains appName
end appIsRunning

if appIsRunning("Google Chrome") then
	tell application "Google Chrome"
		make new window
		activate
	end tell
else
	tell application "Google Chrome" to activate
end if
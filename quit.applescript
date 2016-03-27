tell application "System Events"
	set activeApp to item 1 of (get name of processes whose frontmost is true)
end tell

tell application activeApp
	set activeWindow to the name of the front window
	close window activeWindow
	quit
end tell
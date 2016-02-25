(* Copyright (c) 2015 Miro Mannino *)

(* remember to save it compiled *)
on run argv
	tell application "Terminal"
		if (count argv) = 1 and (item 1 of argv) = "cdf" then
			tell application "Finder"
				try
					set currFolder to (folder of the front window as alias)
				on error
					set currFolder to (path to desktop folder as alias)
				end try
				set currFolder to POSIX path of currFolder
			end tell
			do script "cd " & currFolder
		else
			do script ""
		end if
		activate
	end tell
end run

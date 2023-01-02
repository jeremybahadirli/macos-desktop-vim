on run {input}
	set cmd to "vim"
	
	repeat with eachItem in input
		set cmd to cmd & " " & quoted form of POSIX path of eachItem
	end repeat
	
	tell application "iTerm"
		launch
		create window with default profile command cmd
		activate
	end tell
end run

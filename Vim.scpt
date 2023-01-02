on run {input}
	set command to "vim"
	
	repeat with eachItem in input
		set command to command & " " & quoted form of POSIX path of eachItem
	end repeat
	
	tell application "Terminal"
		launch
		do script command
		activate
	end tell
end run

on run {input}
	set cmd to "vim"
	
	repeat with eachItem in input
		set cmd to cmd & " " & quoted form of POSIX path of eachItem
	end repeat
	
	tell application "Terminal"
		launch
		do script cmd
		activate
	end tell
end run

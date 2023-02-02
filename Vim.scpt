on run {input}
	set terminal to "Terminal" # "Terminal" or "iTerm"
	set cmd to "vim"
	
	repeat with eachItem in input
		set cmd to cmd & " " & quoted form of POSIX path of eachItem
	end repeat
	
	if terminal is "Terminal" then
		tell application "Terminal"
			launch
			do script cmd
			activate
		end tell
	else if terminal is "iTerm" then
		tell application "iTerm"
			launch
			create window with default profile
			tell current session of current window to write text cmd
			activate
		end tell
	end if
end run

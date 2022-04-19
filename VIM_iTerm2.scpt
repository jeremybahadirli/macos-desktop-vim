on run {input}
	if input is not equal to {} then
		set cmd to "vim " & quoted form of POSIX path of input & ""
	else
		set cmd to "vim"
	end if
	tell application "System Events" to set terminalIsRunning to exists application process "iTerm"
	tell application "iTerm"
		activate
		if terminalIsRunning is true then
			set newWindow to (create window with default profile command cmd)
		else
			set newWindow to (create window with default profile command cmd)
		end if
	end tell
end run

on run {input}
  if input is not equal to {} then
    set cmd to "vim " & quoted form of POSIX path of input & " && exit"
  else
    set cmd to "vim && exit"
  end if
  tell application "System Events" to set terminalIsRunning to exists application process "Terminal"
  tell application "Terminal"
    activate
    if terminalIsRunning is true then
      set win to do script with command cmd
    else
      set win to do script with command cmd in window 1
    end if
    set win's current settings to settings set "NEW_TERMINAL_PROFILE"
  end tell
end run

# macos-desktop-vim
Use vim as a macOS desktop text editor, using the built-in Terminal or iTerm. Double-click files to open, or start a new document from Spotlight.
---
**The Application is available from the Releases section. Alternatively, to create it yourself:**
1. Open Automator and create an Application.
2. Add a Run AppleScript action using the contents of Vim-Terminal.scpt or Vim-iTerm.
3. File > Save to your computer using File Format: Application.
---
**Configuration (within Vim.scpt):**
- Terminal
  - `set terminal to "Terminal"`
    - `"Terminal"`: Apple Terminal
    - `"iTerm"`: iTerm2
- Command
  - `set cmd to "vim"`
    - Replace `"vim"`with the command you'd like to run, i.e. `"nvim"`

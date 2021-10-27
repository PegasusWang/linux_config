-- osascript iterm2.scpt
tell application "System Events"
    tell process "iTerm2"
        set frontmost to true
        click menu item "Merge All Windows" of menu "Window" of menu bar 1
    end tell
end tell

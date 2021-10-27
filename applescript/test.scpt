-- osascript test.scpt
tell application "System Events"
    tell process "Chrome"
        name of every menu of menu bar 1
    end tell
end tell

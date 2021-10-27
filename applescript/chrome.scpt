-- osascript test.scpt
tell application "System Events"
    tell process "Chrome"
        set frontmost to true
        click menu item "新标签页" of menu "文件" of menu bar 1
    end tell
end tell

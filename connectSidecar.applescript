-- Connect/disconnect your ipad each time it's executed.
-- TODO: Make it executed automatically when ipad is connected to the macbook.

use AppleScript version "2.4"

set iPadName to "전세진의 iPad" -- TODO: Change to the name of your iPad

tell application "System Preferences" to activate

tell application "System Preferences"
    reveal pane id "com.apple.preference.displays"
end tell

tell application "System Events"
    tell process "System Preferences"
        delay 0.8
        click window "디스플레이"
        tell pop up button "디스플레이 추가" of window "디스플레이"
            click
            delay 0.1
            tell (last menu item of menu 1 whose name contains iPadName)
                click it
            end tell
        end tell
    end tell
end tell

tell application "System Preferences" to close window 1

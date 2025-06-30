-- Apple Intelligence Chatbot Automation Script

set a to path to frontmost application as text

tell application "Notes"
	delay 0.2
	tell account "iCloud"
		set newNote to make new note at folder "Apple Intelligence" with properties {name:"Apple Intelligence Chatbot", body:"PLACEHOLDER_INPUT"}
		delay 0.2
		show newNote
		delay 0.2
	end tell
end tell

tell application "System Events"
	key code 124
	delay 0.1
	keystroke "a" using {command down}
	delay 0.1
	key code 126
	delay 0.1
	key code 125
	delay 0.1
	key code 125 using {command down, shift down}
end tell

set startTime to current date
tell application "System Events"
	keystroke "c" using command down
end tell
delay 0.1
set initialClipboard to the clipboard

tell application "System Events"
	delay 0.1
	tell application "Notes" to activate
	tell process "Notes"
		click menu bar item "Edit" of menu bar 1
		click menu item "Writing Tools" of menu "Edit" of menu bar item "Edit" of menu bar 1
		delay 0.1
		click menu item "Rewrite" of menu 1 of menu item "Writing Tools" of menu "Edit" of menu bar item "Edit" of menu bar 1
		delay 0.1
	end tell
end tell

repeat
	delay 1
	tell application "System Events"
		keystroke "c" using command down
	end tell

	set currentClipboard to the clipboard
	if currentClipboard is not initialClipboard then
		delay 0.5
		tell application "Notes"
			delete newNote
		end tell
		delay 0.5
		delay 0.2
		activate application a
		delay 0.1
		return currentClipboard
	end if
end repeat
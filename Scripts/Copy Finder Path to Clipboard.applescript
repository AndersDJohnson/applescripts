(*
Copy Finder Path to Clipboard
*)

tell application "Finder"
	set theWin to window 1
	set thePath to (POSIX path of (target of theWin as alias))
	set the clipboard to thePath
end tell

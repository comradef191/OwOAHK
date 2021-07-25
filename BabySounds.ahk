#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

If FileExist("BabyWords.ahk"){
    run %A_ScriptDir%\BabyWords.ahk
    return
} else If (FileExist("BabyWords.exe")) {
    run %A_ScriptDir%\BabyWords.exe
    return
}


r::w
l::w
:*?:py::pee
:*?:ddy::ddee
:*?:ffy::ffee
:*?:'ll::w
:*?:'re::we

Pause::
Suspend, Toggle

DetectHiddenWindows On  ; Allows a script's hidden main window to be detected.
SetTitleMatchMode 2  ; Avoids the need to specify the full path of the file below.
PostMessage, 0x111, 65305,,, BabyWords.ahk - AutoHotkey
PostMessage, 0x111, 65305,,, BabyWords.exe
return

~Insert::
ExitApp

Return
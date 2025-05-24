ListLines False         ; Omits subsequently-executed lines from the history
KeyHistory 0            ; Disable key history
SendMode "Input"        ; Recommended for new scripts due to its superior speed and reliability
SetTitleMatchMode 2
SetTitleMatchMode "Fast"

#SingleInstance Force   ; Skips the dialog box and replaces the old instance automatically
#NoTrayIcon             ; Hide the tray icon

SetKeyDelay -1, -1      ; No delay at all will occur after each keystroke sent by Send and ControlSend
SetWinDelay 0           ; Changed to 0 upon recommendation of documentation


#HotIf WinActive("ahk_exe Chrome.exe")

; Ctrl+Tab
^Tab::
{
    if WinGetTitle("A") != ""
    {
        Send "^+{a}"
    }
    else
    {
        Send "^{Down}"
    }

    return
}

; Ctrl+Shift+Tab
^+Tab::
{
    if WinGetTitle("A") != ""
    {
        Send "^+{a}"
    }
    else
    {
        Send "^{Up}"
    }

    return
}

; Ctrl keyup
~Ctrl Up::
{
    if WinGetTitle("A") == ""
    {
        Send "{Enter}"
    }

    return
}

#HotIf


#HotIf WinActive("ahk_exe Chrome.exe") and WinGetTitle("A") == ""

; Ctrl+Right, Ctrl+Shift+Right, Ctrl+Shift+Down
^Right::
^+Right::
^+Down::
{
    Send "^{Down}"
    return
}

; Ctrl+Left, Ctrl+Shift+Left, Ctrl+Shift+Up
^Left::
^+Left::
^+Up::
{
    Send "^{Up}"
    return
}

; Ctrl+Esc
^Esc::
{
    Send "{Esc}"
    return
}

#HotIf
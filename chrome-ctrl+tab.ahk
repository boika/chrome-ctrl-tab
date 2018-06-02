#NoEnv                  ; 
SetBatchLines, -1       ; Script will never sleep
ListLines Off           ; Omits subsequently-executed lines from the history
#KeyHistory 0           ; Disable key history
SendMode Input          ; Recommended for new scripts due to its superior speed and reliability
SetTitleMatchMode 2     ; 
SetTitleMatchMode Fast  ; 
SetKeyDelay, -1, -1     ; 

#SingleInstance force   ; Skips the dialog box and replaces the old instance automatically
#NoTrayIcon             ; Hide the tray icon
#MaxMem 1               ; Maximum memory per variable - 1MB

SetKeyDelay, -1, -1     ; No delay at all will occur after each keystroke sent by Send and ControlSend
SetWinDelay, 0          ; Changed to 0 upon recommendation of documentation


WindowTitle               := "Google Chrome"
DeveloperToolsWindowTitle := "Developer Tools"
TicksToOpenPopup          := 300
OpenedTickCount           := 0
NeedToMovePrev            := false


HasPopupWindowSize()
{
    Width := 0
    WinGetPos, , , Width, , A
    return Width between 430 and 440
}


#IfWinActive ahk_exe Chrome.exe

; Ctrl+Tab
^Tab::
{
    NeedToMovePrev := false

    IfWinActive % WindowTitle
    {
        Send ^+{s}
        OpenedTickCount := A_TickCount
    }
    else
    {
        Send ^{Down}
    }

    return
}


; Ctrl+Shift+Tab
^+Tab::
{
    IfWinActive % WindowTitle
    {
        Send ^+{s}
        NeedToMovePrev := true
        OpenedTickCount := A_TickCount
    }
    else
    {
        NeedToMovePrev := false
        Send ^{Up}
    }

    return
}


; Ctrl keyup
~Ctrl Up::
{
    TicksToSleep := TicksToOpenPopup + OpenedTickCount - A_TickCount

    if (TicksToSleep > 0)
    {
        Sleep TicksToSleep
    }

    if WinActive("ahk_class Chrome_WidgetWin_1") and !WinActive(WindowTitle) and !WinActive(DeveloperToolsWindowTitle) and HasPopupWindowSize()
    {
        if NeedToMovePrev
        {
            Send ^{Up}
            Sleep 50
        }

        Send {Enter}
    }
    
    return
}

#IfWinActive


#If WinActive("ahk_exe Chrome.exe") and WinActive("ahk_class Chrome_WidgetWin_1") and !WinActive(WindowTitle) and !WinActive(DeveloperToolsWindowTitle) and HasPopupWindowSize()

; Ctrl+Right, Ctrl+Shift+Right, Ctrl+Shift+Down
^Right::
^+Right::
^+Down::
{
    NeedToMovePrev := false
    Send ^{Down}
    return
}


; Ctrl+Left, Ctrl+Shift+Left, Ctrl+Shift+Up
^Left::
^+Left::
^+Up::
{
    NeedToMovePrev := false
    Send ^{Up}
    return
}

; Ctrl+Esc
^Esc::
{
    Send {Esc}
    return
}

#If

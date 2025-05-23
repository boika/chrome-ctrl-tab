## Chrome Ctrl+Tab tabs switching for Windows

Currently it's possible to switch between chrome browser tabs in the order they were visited before. Hit <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>A</kbd> to list all opened tabs, navigate them using arrows if needed and finally press <kbd>Enter</kbd>. Unfortunately, it's still impossible to do that natively via handy <kbd>Ctrl</kbd>+<kbd>Tab</kbd> hotkey.

It can be achieved in Windows using [AutoHotkey](https://autohotkey.com/) automation tool. Install [v2.0](https://www.autohotkey.com/download/), and run the script [chrome-ctrl+tab.ahk](chrome-ctrl+tab.ahk):

`.\AutoHotkey[32|64].exe chrome-ctrl+tab.ahk`

<kbd>Ctrl</kbd>+<kbd>Tab</kbd> and <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Tab</kbd>, arrows navigation and <kbd>Esc</kbd> will work the way you expected.

Instead of starting AutoHotkey manually, create shortcut for `.\AutoHotkey[32|64].exe chrome-ctrl+tab.ahk` target and add it to startup system folder.
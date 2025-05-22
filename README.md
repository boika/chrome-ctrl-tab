## Chrome Ctrl+Tab tabs switching for Windows

Currently it's possible to switch between chrome browser tabs in the order they were visited before. Hit <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>A</kbd> to list all opened tabs, navigate them using arrows if needed and finally press <kbd>Enter</kbd>. Unfortunately, it's still impossible to do that via handy <kbd>Ctrl</kbd>+<kbd>Tab</kbd> hotkey.

However, we can use [AutoHotkey](https://autohotkey.com/) automation tool to achieve it in Windows. Install v1.1, and run the script [chrome-ctrl+tab.ahk](chrome-ctrl+tab.ahk):

`.\AutoHotkey[A32|U32|U64].exe chrome-ctrl+tab.ahk`

It intercepts <kbd>Ctrl</kbd>+<kbd>Tab</kbd> hotkey for chrome window and send <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>A</kbd> instead. Also it handles some keyboard arrows navigation.

Arrows navigation, <kbd>Esc</kbd>, both <kbd>Ctrl</kbd>+<kbd>Tab</kbd> and <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Tab</kbd> are working the way you expected.

Instead of starting AutoHotkey manually, just create shortcut for `...\AutoHotkey[A32|U32|U64].exe chrome-ctrl+tab.ahk` target and add it to startup system folder.

## Chrome Ctrl+Tab tabs switching for Windows

Unfortunately, there is no easy way to switch between chrome browser tabs in the order they were visited before, also using handy **<kbd>Ctrl</kbd>+<kbd>Tab</kbd>** hotkey. Also, showing the list of all opened tabs in the popup window with ability to navigate them using arrows. Just like we can do that with opened windows in the operation system using <kbd>Alt</kbd>+<kbd>Tab</kbd>.

There is a tricky way to achieve it in Windows using [Quick Tabs](https://chrome.google.com/webstore/detail/quick-tabs/jnjfeinjfmenlddahdjdmgpbokiacbbb) extension and [AutoHotkey](https://autohotkey.com/) automation tool:

**1.** Install [Quick Tabs](https://chrome.google.com/webstore/detail/quick-tabs/jnjfeinjfmenlddahdjdmgpbokiacbbb) extension for chrome browser and enable it. You can also find its source code on [github](https://github.com/babyman/quick-tabs-chrome-extension).

**2.** Configure Quick Tabs from its options page (chrome-extension://jnjfeinjfmenlddahdjdmgpbokiacbbb/options.html):

- check all display options except badge tab count
    
![Popup Screenshot](images/quick-tabs-display-options.jpg?raw=true)
                    
- set custom CSS from [style.css](style.css)
    
![Popup Screenshot](images/quick-tabs-custom-css.jpg?raw=true)    
                    
- finally apply changes

**3.** Configure chrome keyboard shortcuts for the extension (chrome://extensions/shortcuts). Chrome does not allow to set <kbd>Ctrl</kbd>+<kbd>Tab</kbd> as a hotkey, so we set <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>S</kbd> for activating the extension. Also <kbd>Ctrl</kbd>+<kbd>↓</kbd> for previous tab and <kbd>Ctrl</kbd>+<kbd>↑</kbd> for the next one:

![Popup Screenshot](images/keyboard-shortcuts.jpg?raw=true)
 
 **4.** Install [AutoHotkey](https://autohotkey.com/download/) tool, if you don't have it installed, and run the script [chrome-ctrl+tab.ahk](chrome-ctrl+tab.ahk). Just start the program with path to the script:

`...\AutoHotkey[A32|U32|U64].exe chrome-ctrl+tab.ahk`

It is required to intercept <kbd>Ctrl</kbd>+<kbd>Tab</kbd> hotkey for chrome window and send <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>S</kbd> instead. Also all the arrows keyboard navigation is scripted there.

-----

As a result you will see something like that, when press <kbd>Ctrl</kbd>+<kbd>Tab</kbd> in active chrome window:

![Popup Screenshot](images/example.jpg?raw=true)

Arrows navigation, <kbd>Esc</kbd>, both <kbd>Ctrl</kbd>+<kbd>Tab</kbd> and <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Tab</kbd> are working the way you expected.

If you don't want always start AutoHotkey manually, you can create shortcut for `...\AutoHotkey[A32|U32|U64].exe chrome-ctrl+tab.ahk` target, add it to startup system folder, forget about it and enjoy.

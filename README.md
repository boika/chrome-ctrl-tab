## Chrome Ctrl+Tab tabs switching for Windows

Unfortunately, there is no easy way to switch between chrome browser tabs in the order they were visited before, also using handy **`Ctrl+Tab`** hotkey. Also, showing the list of all opened tabs in the popup window with ability to navigate them using arrows. Just like we can do that with opened windows in the operation system.
There is a tricky way to do it in Windows using [Quick Tabs](https://chrome.google.com/webstore/detail/quick-tabs/jnjfeinjfmenlddahdjdmgpbokiacbbb) extension and [AutoHotkey](https://autohotkey.com/) automation tool. Let's start!

**1.** Install [Quick Tabs](https://chrome.google.com/webstore/detail/quick-tabs/jnjfeinjfmenlddahdjdmgpbokiacbbb) extension for chrome browser and enable it. You can also find its source code on [github](https://github.com/babyman/quick-tabs-chrome-extension).

**2.** Configure Quick Tabs extension from its options page the next way (chrome-extension://jnjfeinjfmenlddahdjdmgpbokiacbbb/options.html):

- check all display options except badge tab count
    
![Popup Screenshot](images/quick-tabs-display-options.jpg?raw=true)
                    
- set custom CSS from [style.css](style.css)
    
![Popup Screenshot](images/quick-tabs-custom-css.jpg?raw=true)    
                    
- finally apply changes

**3.** Configure chrome keyboard shortcuts for the extension (chrome://extensions/shortcuts). Chrome does not allow to set `Ctrl+Tab` as a hotkey, so we set `Ctrl+Shift+S` for activating teh extension. Also `Ctrl+↓` for previous tab and `Ctrl+↑` for the next one:

![Popup Screenshot](images/keyboard-shortcuts.jpg?raw=true)
 
 **4.** Install [AutoHotkey](https://autohotkey.com/download/) tool, if you don't have it installed, and run the script [chrome-ctrl+tab.ahk](chrome-ctrl+tab.ahk). Just start the program with path to the script:

`...\AutoHotkey[A32|U32|U64].exe chrome-ctrl+tab.ahk`

It is required to intercept `Ctrl+Tab` hotkey for chrome window and send `Ctrl+Shift+S` instead. Also all the arrows keyboard navigation is scripted there.

-----

As a result you will see something like that when press `Ctrl+Tab` in active chrome window:

![Popup Screenshot](images/example.jpg?raw=true)

Arrows navigation, `Esc`, both `Ctrl+Tab` and `Ctrl+Shift+Tab` are working the way you expected.

If you don't want always start AutoHotkey manually, you can create shortcut with for `...\AutoHotkey[A32|U32|U64].exe chrome-ctrl+tab.ahk` target, add it to startup system folder, forget about it and enjoy.

# my-dev-environment
This project will document what I often use to setup my development environment.

|||
|-|-|
| [how-to-git](how-to/how-to-git.md) | [how-to-sqlite](how-to/how-to-sqlite.sql) |


# choco-dev-setup.bat
List of choco commands used to install applications for my dev environment.

# Notepad++

## Associate additional file extensions with languages
Navigate to: Settings -> Style Configurator… -> Select Language:
1. "CSS", set "User ext." "scss"
2. "JavaScript", set "User ext." "jsx"
3. "SQL", set "User ext." "ddl"

## Settings -> Preferences...

* General -> Toolbar: `Hide`
* Language
  * (uncheck) Make language menu compact
  * Available Languages:
    * Normal Text
    * Batch
    * CSS
    * HTML
    * Java
    * JavaScript
    * JSON
    * JSP
    * SQL
    * XML
    * PowerShell
    * Python
  * Tab Settings
    * Tab size: 2
    * (check) Replace by space
* Highlighting
  * (uncheck) Match whole word only

## Npp Plugins
* JSON Viewer
* JSTool
* XML Tools

## userDefineLang_AHK.xml

is a User-defined language highlighting for AutoHotKey scripts that works with "Dracula" theme.

This is a good page to help setup AutoHotKey with Notepad++:

https://github.com/jNizM/ahk_notepad-plus-plus

## Custom Dark Themes for AutoHotKey and Markdown
Copy the following to `%AppData%/Notepad++/userDefineLangs`
* `npp/userDefinedLang-markdown.dracula.lewis.xml`
* `npp/userDefineLang_AHK.xml`

Delete `userDefinedLang-markdown.default.modern` since this one causes problems.

## [Dracula Theme](https://draculatheme.com/notepad-plus-plus/)

1. Copy the following to `%AppData%/Notepad++/themes`
* `npp/Dracula.xml`

2. To enable go to `Settings` -> `Style Configurator...` -> `Select theme:` and then select "Dracula"

# ahk-scripts

Various autohotkey scripts I use.

# Add Startup Items

Navigate to:

> %USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

Drop the following shortcuts:
1. my-hotkeys.ahk
2. firefox

## my-hotkeys.ahk

has keyshortcuts to quickly access various things on my machine.

# Eclipse setup

## Install Plugins

1. "Darkest Theme"

## Firefox Extensions

| Extension Name         | Description                         |
|------------------------|-------------------------------------|
| Bypass Paywalls        | Bypass News Sites' Paywalls |
| Cisco Webex Extension  | Join Webex meetings using Firefox ™ |
| Gitpod                 | Describe your dev environment as code and get fully prebuilt dev environments for any GitLab, GitHub and Bitbucket project. |
| Honey                  | Automatically find and apply coupon codes when you shop online! |
| LastPass               | Last Password you will ever need |
| React Developer Tools  | Adds React debugging tools to the Firefox Developer Tools. |
| Stylish                | Customize any website to your color scheme in 1 click, thousands of user styles with beautiful themes, skins & free backgrounds. |
| uBlock Origin          | Finally, an efficient blocker. Easy on CPU and memory. |
| Unpaywall              | Legally get full text of scholarly articles as you browse. |
| Video DownloadHelper   | Download Videos from the Web |
| Wiper                  | Black-list websites (URLs) on Google |

## Additional Apps

### T-Clock
1. Right-click Date/Time on Taskbar
2. Select "T-Clock Options"
3. Select "Time Format" tab
4. Check "Advanced clock format" and enter "ddd, m/dd\nh:nn tt"

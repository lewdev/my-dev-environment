# How to Notepad++

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
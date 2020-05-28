/*
My application global keyshortcuts
^ = ctrl
! = alt
+ = shift
*/
;browserExe = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
browserExe = "C:\Program Files\Mozilla Firefox\firefox.exe"
<<<<<<< HEAD
browserName = "Mozilla Firefox"

^+!F:: ;Facebook bookmarks folder
  SetTitleMatchMode RegEx
  id := WinExist(browserName)
  if id {
    WinActivate, %browserName%
    Send ^t
    Send ^l
    Send {Blind}{Text}https://www.facebook.com
    Send {ENTER}
  }
  else {
    Run %browserExe% https://www.facebook.com
  }
Return

^+!T:: ;Chrome New Tab (T for Tab)
  SetTitleMatchMode RegEx
  id := WinExist(browserName)
  if id {
    WinActivate, %browserName%
    Send ^t
  }
  else {
    Run %browserExe% about:newtab
=======
;browserName = "Google Chrome"
browserName = "Mozilla Firefox"

openUrlInBrowser(url)
{
}

^+!T:: ;Chrome New Tab (T for Tab)
  SetTitleMatchMode RegEx
  id := WinExist("%browserName%$")
  if id {
    WinActivate, - %browserName%
    Send ^t
  }
  else {
    Run %browserExe%
>>>>>>> 70e71e0094f7f62c4ed43d0f1c1e63b289abba59
  }
Return
^+!F:: ;Facebook
  Run %browserExe% https://facebook.com
Return
^+!C:: ;Google Calendar
<<<<<<< HEAD
  SetTitleMatchMode RegEx
  id := WinExist("^Google Calendar -")
  if id {
    WinActivate, ^Google Calendar -
  }
  else {
    Run %browserExe% https://calendar.google.com/calendar/r
  }
Return

^+!G:: ;Gmail
  SetTitleMatchMode RegEx
  id := WinExist("- Gmail$")
  if id {
    WinActivate, Gmail$
  }
  else {
    Run %browserExe% https://mail.google.com
  }
=======
  Run %browserExe% https://calendar.google.com
Return
^+!M:: ;Gmail
  Run %browserExe% https://mail.google.com
>>>>>>> 70e71e0094f7f62c4ed43d0f1c1e63b289abba59
Return
^+!R:: ;My Github repository
  Run %browserExe% https://github.com/lewdev?tab=repositories
Return
<<<<<<< HEAD

^+!D:: ;Google Drive
=======
^+!G:: ;My Github gists
  Run %browserExe% https://gist.github.com/lewdev
Return
^+!D:: ;My Github repository
>>>>>>> 70e71e0094f7f62c4ed43d0f1c1e63b289abba59
  Run %browserExe% https://drive.google.com
Return
^+!Y:: ;Youtube
  Run %browserExe% https://www.youtube.com
Return
^+!P:: ;Google Photos
  Run %browserExe% https://photos.google.com
Return
^+!N:: ;Notepad++
  Run C:\Program Files\Notepad++\notepad++.exe
Return
<<<<<<< HEAD

=======
^+!Q:: ;Squirrel SQL
  SetTitleMatchMode RegEx
  id := WinExist("^SQuirreL SQL Client")
  if id {
    WinActivate, ^SQuirreL SQL Client
  }
  else {
    Run %USERPROFILE%\apps\squirrel-sql-snapshot-20180729_2224\squirrel-sql.bat
  }
Return
>>>>>>> 70e71e0094f7f62c4ed43d0f1c1e63b289abba59

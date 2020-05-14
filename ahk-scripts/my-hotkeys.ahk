/*
My application global keyshortcuts
^ = ctrl
! = alt
+ = shift
*/

#browserExe = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
browserExe = "C:\Program Files\Mozilla Firefox\firefox.exe"
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
  }
Return

^+!C:: ;Google Calendar
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
Return

^+!R:: ;My Github repository
  Run %browserExe% https://github.com/lewdev?tab=repositories
Return

^+!D:: ;Google Drive
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


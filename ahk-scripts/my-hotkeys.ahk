/*
My application global keyshortcuts
^ = ctrl
! = alt
+ = shift
*/
;browserExe = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
browserExe = "C:\Program Files\Mozilla Firefox\firefox.exe"
;browserName = "Google Chrome"
browserName = "Mozilla Firefox"

^+!T:: ;New Tab (T for Tab)
  Run %browserExe% about:newtab
Return
^+!F:: ;Facebook
  Run %browserExe% https://facebook.com
Return
^+!C:: ;Google Calendar
  Run %browserExe% https://calendar.google.com
Return
^+!M:: ;Gmail
  Run %browserExe% https://mail.google.com
Return
^+!R:: ;My Github repository
  Run %browserExe% https://github.com/lewdev?tab=repositories
Return
^+!D:: ;Google Drive
  Run %browserExe% https://drive.google.com
Return
^+!G:: ;My Github gists
  Run %browserExe% https://gist.github.com/lewdev
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
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

openUrlInBrowser(url)
{
}

^+!F:: ;Facebook bookmarks folder
  SetTitleMatchMode RegEx
  id := WinExist("%browserName%$")
  if id {
    WinActivate, - %browserName%$
    Send ^t
    Send ^l
    Send {Blind}{Text} "https://facebook.com"
    Send {ENTER}
  }
  else {
    Run %browserExe% "https://facebook.com"
  }
Return

^+!T:: ;Chrome New Tab (T for Tab)
  SetTitleMatchMode RegEx
  id := WinExist("%browserName%$")
  if id {
    WinActivate, - %browserName%
    Send ^t
  }
  else {
    Run %browserExe%
  }
Return

^+!C:: ;Google Calendar
  id := WinExist("^Google Calendar -")
  SetTitleMatchMode RegEx
  if id {
    WinActivate, ^Google Calendar -
  }
  else {
    Run %browserExe%  --profile-directory=Default --app-id=kbmfljidgdloamegjlahbininaboaagk
  }
Return

^+!G:: ;Gmail
  SetTitleMatchMode RegEx
  id := WinExist("- Gmail$")
  if id {
    WinActivate, Gmail$
  }
  else {
    Run %browserExe%  --profile-directory=Default --app-id=kmhopmchchfpfdcdjodmpfaaphdclmlj
  }
Return

^+!R:: ;My Github repository
  Run %browserExe% https://github.com/lewdev?tab=repositories
Return

^+!D:: ;My Github repository
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

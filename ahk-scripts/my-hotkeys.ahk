/*
My application global keyshortcuts
^ = ctrl
! = alt
+ = shift
*/

^+!I:: ;Chrome (I for Internet)
  SetTitleMatchMode RegEx
  id := WinExist("- Google Chrome$")
  if id {
    WinActivate, - Google Chrome$
  }
  else {
    Run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe chrome://newtab
  }
Return

^+!T:: ;Chrome New Tab (T for Tab)
  SetTitleMatchMode RegEx
  id := WinExist("- Google Chrome$")
  if id {
    WinActivate, - Google Chrome$
    Send ^t
  }
  else {
    Run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe chrome://newtab
  }
Return

^+!C:: ;Google Calendar
  SetTitleMatchMode RegEx
  id := WinExist("^Google Calendar -")
  if id {
    WinActivate, ^Google Calendar -
  }
  else {
    Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"  --profile-directory=Default --app-id=kbmfljidgdloamegjlahbininaboaagk
  }
Return

^+!G:: ;Gmail
  SetTitleMatchMode RegEx
  id := WinExist("- Gmail$")
  if id {
    WinActivate, Gmail$
  }
  else {
    Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"  --profile-directory=Default --app-id=kmhopmchchfpfdcdjodmpfaaphdclmlj
  }
Return

^+!F:: ;Facebook
  Run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe https://www.facebook.com/groups/237524160104801/
Return

^+!Y:: ;Youtube
  Run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe https://www.youtube.com
Return

^+!P:: ;Google Photos
  Run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe https://photos.google.com
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

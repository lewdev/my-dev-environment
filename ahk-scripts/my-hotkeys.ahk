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

^+!1:: ;code
  Run %browserExe% "data:text/html`,<textarea id=d spellcheck=false><div id=o></div>`%0d<script>`%0do.innerHTML = 0;`%0d</script></textarea><iframe id=f></iframe><script>onkeypress=e=>(e.ctrlKey&&e.keyCode==13)||e.keyCode==10?f.srcdoc=d.value:0</script><style>*{box-sizing:border-box;margin:0}textarea`,iframe{width:50`%;height:100`%;vertical-align:top}textarea{resize:none;filter:invert(1)hue-rotate(180deg)}"
  Sleep 500
  WinActivate, ^data:text/html
  Sleep 300
  SendInput, {Ctrl Down}l{Ctrl Up}
  Sleep 300
  SendInput, {Enter}
return
^+!2:: ;Bash
  If (computername != "HATARAKU2") {
    Dir := "Documents\"
  }
  Run "C:\Program Files\Git\git-bash.exe" --cd="%USERPROFILE%\%Dir%workspace"
Return
^+!V:: ;Google Voice
  Run %browserExe% https://voice.google.com
return
#m:: ;Turn off monitor (Win + m)
  Sleep 1000
  SendMessage, 0x112, 0xF170, 2,, Program Manager
return
^+!T:: ;New Tab (T for Tab)
  Run %browserExe% about:newtab
  Sleep 800
  WinActivate, New Tab
  SendInput, {Ctrl Down}l{Ctrl Up}
Return
^+!B:: ;Bitbucket
  Run %browserExe% https://bitbucket.parsons.us/dashboard
Return
^+!C:: ;Google Calendar
  Run %browserExe% https://calendar.google.com
Return
^+!E:: ;My Dev Environment
  Run %browserExe% https://github.com/lewdev/my-dev-environment
Return
^+!F:: ;Facebook
  Run %browserExe% https://facebook.com
Return
^+!L:: ;My Portfolio
  Run %browserExe% https://lewdev.github.io
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
text = Joining Meeting in... (Esc to cancel)
seconds .= 9
count .= -1

browserExe = "C:\Program Files\Mozilla Firefox\firefox.exe"

; Weekly Sync
Run %browserExe% https://parsons.webex.com/parsons/j.php?MTID=m2030b7fa0bcf04dd5ebca5c532001eef

; initalize progress bar
Progress, m1 pBar fs70 fm12 zh10 w300, 0, 0, 0

SetTimer, label, 1000
label:
  ++count
  Progress, % 100*(seconds-count)/(seconds), % seconds-count+1, %text%, % count>seconds ? seconds-count : ((z:=seconds-count)=0 ? seconds : z)

  If (count = seconds) {
    ; Focus on Window, Press Enter
    WinActivate, WebEx
    SendInput, {Enter}
    ExitApp
  }
  Return

esc:: ExitApp

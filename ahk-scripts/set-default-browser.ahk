SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

; Open Settings: Default Apps
Run %windir%\system32\control.exe /name Microsoft.DefaultPrograms /page pageDefaultProgram\pageAdvancedSettings

; Wait for it to load
Sleep, 20000

winactivate, Settings
; Tab to Browser
Loop 5 {
  winactivate, Settings
  Send, {Tab}
  Sleep, 100
}
winactivate, Settings
Send, {Space}

; Select Firefox
Sleep, 100
winactivate, Settings
Send, {Tab}

Sleep, 100
winactivate, Settings
Send, {Space}
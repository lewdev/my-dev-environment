; -----------------------------------------------------------------------------
; CLICKPOCALYPSE 2 Auto
; To use, run the script, if it's not open already, it will go to the URL to the game.
; If the click is off vertically, change the value in "myClick" method below.
; (currently adjusted to 60)
;
; This script will automatically:
; * use potions & scrolls
; * collect items
; * open chests, bookcases, racks, etc.
; * upgrade characters
; -----------------------------------------------------------------------------
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn   ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

winTitle = CLICKPOCALYPSE 2

MsgBox, 0, Welcome to CLICKPOCALYPSE 2 Auto Player, This script will automatically play "%winTitle%".`n`nHit the "Esc" to end the script.

increment = 1
upgradeColor = 0xE6A53A
upgradeBorderColor = 0xE6A53A
buttonHighlight = 0x322B2B
rest = 400
yOffset = 5

myClick(x, y)
{
  ypos := y + 5 ; add offset
  Click %x%, %ypos%
}

IfWinNotExist, %winTitle%
{
  RunWait, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --app=http://minmaxia.com/c2
  Sleep, 5000
}

IfWinExist, %winTitle%
{
  ;resize the window
  xPos = 150
  yPos = 50
  width = 1040
  height := yOffset + 784
  WinMove, %winTitle%,,,, %width%, %height%
}

Loop
{
  IfWinNotExist, %winTitle%
  {
    MsgBox Window "%winTitle%" not found. Leaving script. increment=%increment%
    return
  }
  winactivate, %winTitle%
  ; fire scrolls
  send, 1
  send, 2
  send, 3
  send, 4
  send, 5
  send, 6

  Loop 10 ; collect stuff
  {
    myClick(875, 140)
  }

  ; open chest/rack/etc.
  If (Mod(increment, 10) == 0)
  {
    myClick(665, 113)  ; open chest/rack/etc.
  }

  ; use potions
  If (Mod(increment, 20) == 0)
  {
    myClick(720, 590)  ; Use potion Row1-1
    myClick(930, 590)  ; Use potion Row1-2

    myClick(720, 640)  ; Use potion Row2-1
    myClick(930, 640)  ; Use potion Row2-2

    myClick(720, 690)  ; Use potion Row3-1
    myClick(930, 690)  ; Use potion Row3-2

    myClick(720, 740)  ; Use potion Row4-1
    myClick(930, 740)  ; Use potion Row4-2
  }

  ; skill up
  If (Mod(increment, 10) == 0)
  {
    PixelGetColor, color, 100, 68
    IfEqual, color, %upgradeColor%
    {
      myClick(100, 63)  ; Select character 1
      skillUpCharacter()
    }

    PixelGetColor, color, 150, 68
    IfEqual, color, %upgradeColor%
    {
      myClick(150, 55)  ; Select character 2
      skillUpCharacter()
    }

    PixelGetColor, color, 200, 68
    IfEqual, color, %upgradeColor%
    {
      myClick(200, 55)  ; Select character 3
      skillUpCharacter()
    }

    PixelGetColor, color, 250, 68
    IfEqual, color, %upgradeColor%
    {
      myClick(250, 55)  ; Select character 4
      skillUpCharacter()
    }

    PixelGetColor, color, 300, 68
    IfEqual, color, %upgradeColor%
    {
      myClick(300, 55)  ; Select character 5
      skillUpCharacter()
    }

    PixelGetColor, color, 40, 68
    IfNotEqual, color, %buttonHighlight%
      myClick(40, 55)  ; Return to Game
  }

  Sleep, 100
  increment += 1
}

skillUpCharacter()
{
  ;click on character to level up
  Sleep, 300
  Loop 5
    myClick(130, 100)

  Sleep, 100

  ;scroll window up
  Loop 5
    Click WheelUp 310, 210
  Sleep, 300

  clickSkillRow1()
  clickSkillRow2()
  clickSkillRow3()
  clickSkillRow4()
  clickSkillRow5()
  clickSkillRow6()
  clickSkillRow7()
  clickSkillRow8()

  Sleep, 300
  Loop 5
    Click WheelDown 310, 710
  Sleep, 300
  ; redo row 8 since we scrolled down
  clickSkillRow8()

  Sleep, 300
  Loop 5
    Click WheelUp 310, 710
  Sleep, 300
}
; add 70 to change row
; add 200 to change column

clickSkillRow1()
{
  myClick(310, 210)
  Sleep, 100
  myClick(510, 210)
  Sleep, 100
  myClick(710, 210)
  Sleep, 100
  myClick(910, 210)
  Sleep, 100
}
clickSkillRow2()
{
  myClick(310, 290)
  Sleep, 100
  myClick(510, 290)
  Sleep, 100
  myClick(710, 290)
  Sleep, 100
  myClick(910, 290)
  Sleep, 100
}
clickSkillRow3()
{
  myClick(310, 360)
  Sleep, 100
  myClick(510, 360)
  Sleep, 100
  myClick(710, 360)
  Sleep, 100
  myClick(910, 360)
  Sleep, 100
}
clickSkillRow4()
{
  myClick(310, 430)
  Sleep, 100
  myClick(510, 430)
  Sleep, 100
  myClick(710, 430)
  Sleep, 100
  myClick(910, 430)
  Sleep, 100
}
clickSkillRow5()
{
  myClick(310, 500)
  Sleep, 100
  myClick(510, 500)
  Sleep, 100
  myClick(710, 500)
  Sleep, 100
  myClick(910, 500)
  Sleep, 100
}
clickSkillRow6()
{
  myClick(310, 570)
  Sleep, 100
  myClick(510, 570)
  Sleep, 100
  myClick(710, 570)
  Sleep, 100
  myClick(910, 570)
  Sleep, 100
}
clickSkillRow7()
{
  myClick(310, 640)
  Sleep, 100
  myClick(510, 640)
  Sleep, 100
  myClick(710, 640)
  Sleep, 100
  myClick(910, 640)
  Sleep, 100
}
clickSkillRow8()
{
  myClick(310, 710)
  Sleep, 100
  myClick(510, 710)
  Sleep, 100
  myClick(710, 710)
  Sleep, 100
  myClick(910, 710)
  Sleep, 100
}
Esc::
MsgBox, 0, Exiting the script, You pressed the Esc key. `n`nincrement=%increment%
ExitApp

RunWaitOne(command) {
    ; WshShell object: http://msdn.microsoft.com/en-us/library/aew9yb99
    shell := ComObjCreate("WScript.Shell")
    ; Execute a single command via cmd.exe
    exec := shell.Exec(ComSpec " /C " command)
    ; Read and return the command's output
    return exec.StdOut.ReadAll()
}
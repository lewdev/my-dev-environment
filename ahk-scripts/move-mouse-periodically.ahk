#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn   ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

Loop
{
  MouseGetPos, xpos, ypos
  x := xpos + 1
  ;MsgBox, The cursor moved 1 pixel to %x%, %ypos%.
  MouseMove, %x%, %ypos%
  ;MouseMove, %xpos%, %ypos%
  Sleep, 300000 ; 5 minutes
}
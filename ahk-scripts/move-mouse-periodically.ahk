
Loop
{
  MouseGetPos, xpos, ypos
  x := xpos + 1
  ;MsgBox, The cursor moved 1 pixel to %x%, %ypos%.
  MouseMove, %x%, %ypos%
  Sleep, 720000 ; 9 minutes
}
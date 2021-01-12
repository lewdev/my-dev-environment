
Loop
{
  MouseGetPos, xpos, ypos
  x := xpos + 1
  ;MsgBox, The cursor moved 1 pixel to %x%, %ypos%.
  MouseMove, %x%, %ypos%
  ;MouseMove, %xpos%, %ypos%
  Sleep, 300000 ; 9 minutes
}
/*
Clean XML Mapper

Runs key presses to clean up my code.
*/
SendMode Input

SetTitleMatchMode RegEx
id := WinExist("Mapper.xml - Eclipse IDE$")
if id {
  MsgBox Make sure "Regular Expressions" is checked.
  WinActivate, - Eclipse IDE$

  Send ^f
  Send {Blind}{Text}<([a-zA-Z0-9:]+[\sA-Z\.a-z0-9_=""\-\$\{\}\[\]]*)>.*</[a-zA-Z0-9:]+>
  SendRaw `t
  Send {Blind}{Text}<$1/>
  Send !a
  Send {Esc}

  Return
}
else {
  MsgBox Mapper.xml - Eclipse IDE$ not found.
}

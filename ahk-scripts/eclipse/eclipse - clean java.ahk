/*
Clean Java

Runs key presses to clean up my code.
*/
SendMode Input

SetTitleMatchMode RegEx
id := WinExist(".java - Eclipse IDE$")
if id {
  MsgBox Make sure "Regular Expressions" IS checked.
  WinActivate, - Eclipse IDE$

  Send ^f
  Send {Blind}{Text}\t
  SendRaw `t
  Send {Space 4}
  Send !a
  Send {Esc}

  Send ^f
  Send {Blind}{Text}\s*/{2,}[\s]*end( of)*\s*[a-z-A-Z-\ ]+
  SendRaw `t
  Send {Delete}
  Send !a
  Send {Esc}

  Send ^f
  Send {Blind}{Text}[\r\n]{2}[\s]{4}/[\*]{3,}[\s\n\r]+\* Function: [a-zA-Z]+[\s\n\r]+[\*]{3,}/
  SendRaw `t
  Send {Delete}
  Send !a
  Send {Esc}

  Send ^f
  Send {Blind}{Text}\s\*\s+\* @author   [a-zA-Z]+\s[a-zA-Z]+[\r\n]+ \* @version  [0-9\./\s,]+[\n\r]+ \* @since    [A-Za-z0-9\./\s,]+[\n\r]+
  SendRaw `t
  Send {Delete}
  Send !a
  Send {Esc}

  Return
}
else {
  MsgBox .java - Eclipse IDE$ not found.
}

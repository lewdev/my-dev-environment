/*
Clean JSP

Runs key presses to clean up my code.
*/
SendMode Input

SetTitleMatchMode RegEx
id := WinExist(".jsp - Eclipse IDE$")
if id {
  MsgBox Make sure "Regular Expressions" is checked.
  WinActivate, - Eclipse IDE$

  Send ^f
  Send {Blind}{Text}\t
  SendRaw `t
  Send {Space}{Space}
  Send !a
  Send {Esc}

  Send ^f
  Send {Blind}{Text}\s+<\!-- (end )*tan_table -->
  SendRaw `t
  Send {Delete}
  Send !a
  Send {Esc}

  Send ^f
  Send {Blind}{Text}<center>
  SendRaw `t
  Send {Blind}{Text}<div class="center">
  Send !a
  Send {Esc}

  Send ^f
  Send {Blind}{Text}</center>
  SendRaw `t
  Send {Blind}{Text}</div>
  Send !a
  Send {Esc}

  Send ^f
  Send {Blind}{Text}<bean:write name="([a-zA-Z_]+)"/>
  SendRaw `t
  Send {Blind}{Text}\$\{$1\}
  Send !a
  Send {Esc}

  Send ^f
  Send {Blind}{Text}<bean:write name="([a-zA-Z_]+)" property="([a-zA-Z_]+)"/>
  SendRaw `t
  Send {Blind}{Text}\$\{$1\.$2\}
  Send !a
  Send {Esc}

  Send ^f
  Send {Blind}{Text}border="0" cellspacing="0" class="([a-zA-Z\s-_]+)"
  SendRaw `t
  Send {Blind}{Text}class="$1 border-zero cellspacing-zero"
  Send !a
  Send {Esc}

  Send ^f
  Send {Blind}{Text}border="0" cellspacing="0"
  SendRaw `t
  Send {Blind}{Text}class="border-zero cellspacing-zero"
  Send !a
  Send {Esc}

  Send ^f
  Send {Blind}{Text}width="([0-9]+)"
  SendRaw `t
  Send {Blind}{Text}style="width:$1px"
  Send !a
  Send {Esc}

  Send ^f
  Send {Blind}{Text}<([a-zA-Z0-9:]+[\sA-Z\.a-z0-9=""\-\$\{\}\[\]]*)></[a-zA-Z0-9:]+>
  SendRaw `t
  Send {Blind}{Text}<$1/>
  Send !a
  Send {Esc}

  Return
}
else {
  MsgBox .jsp - Eclipse IDE$ not found.
}

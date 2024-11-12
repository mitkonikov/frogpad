; Inspired by github.com/clarkm/dupepad
; Rewritten and extended by github.com/mitkonikov
; AutoHotKey v2.0 script

sendChar(char) {
    ; Check if Shift or CapsLock is active for uppercase
    if (GetKeyState("Shift", "P") || GetKeyState("CapsLock", "T"))
        Send(StrUpper(char))
    else
        Send(char)
}

; top row
$q:: sendChar("p")
space & q:: sendChar("j")
$w:: sendChar("w")
space & w:: sendChar("m")
$e:: sendChar("r")
space & e:: sendChar("b")
$r:: sendChar("a")
$t:: sendChar("f")

; middle row
$a:: sendChar("d")
space & a:: sendChar("v")
$s:: sendChar("t")
space & s:: sendChar("c")
$d:: sendChar("h")
space & d:: sendChar("l")
$f:: sendChar("e")
space & f:: sendChar("z")
$g:: sendChar("o")
space & g:: sendChar("q")

; bottom row
$z:: sendChar("y")
space & z:: sendChar("x")
$x:: sendChar("s")
space & x:: sendChar("g")
$c:: sendChar("n")
space & c:: sendChar("k")
$v:: sendChar("i")
$b:: sendChar("u")

$`:: Send("{backspace}")

; symbols
space & r:: Send("+" "[")
space & t:: Send("+" "]")
space & 2:: Send("-")
space & 3:: Send("{+}")
space & 4:: Send("(")
space & 5:: Send(")")
space & 6:: Send("[")
space & 7:: Send("]")
space & v:: Send("<")
space & b:: Send(">")
space & h:: Send("{Enter}")
$y:: Send("=")
space & y:: Send('"')
$h:: Send(";")
$n:: Send(".")
space & n:: Send(",")
space & LWin:: Send(".")

; arrows
!w:: Send("{Up}")
!s:: Send("{Down}")
!a:: Send("{Left}")
!d:: Send("{Right}")
^!w:: Send("^" "{Up}")
^!s:: Send("^" "{Down}")
^!a:: Send("^" "{Left}")
^!d:: Send("^" "{Right}")
^+!w:: Send("^+" "{Up}")
^+!s:: Send("^+" "{Down}")
^+!a:: Send("^+" "{Left}")
^+!d:: Send("^+" "{Right}")
+!w:: Send("+" "{Up}")
+!s:: Send("+" "{Down}")
+!a:: Send("+" "{Left}")
+!d:: Send("+" "{Right}")

$space:: Send("{space}") ; allow spaces still

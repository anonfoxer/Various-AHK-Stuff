; This is my main macro collection for Company of Heroes 2. Still wont let me beat Griffin.
; You're free to use this, modify this, do whatever. 
; version 0.1.2 

; Its called CoH2++ because I am creative(tm)
; It will probably have stuff you find to be useful.
; ongoing wip
; by anonfoxer


; == how to use ==
; download this script
; install AHK
; run this script
; Launch CoH2

MsgBox CoH2++ v0.1.2 by anonfoxer. Check the readme to learn the binds!

#ifwinactive, Company Of Heroes 2


;repair those damn vehicles
$+v::
Send e
Sleep 40
Click
return

; replenish those damn squads
$+r::
SendInput {r 10}
return

; Quick Camera Flicks
; Adjust coords and timing to your needs/liking
$+g::
Click, 156, 747
Sleep 600
Click, 102, 702
Sleep 600
Click, 187, 784
Sleep 600
Click, 100, 802
Sleep 600
Click, 202, 693
return

; Spam Conscripts!
$+c::
SendInput {c 5}

; Slow Camera Observs
; Adjust coords and timing to your needs/liking
$+h::
Click, 156, 747
Sleep 4000
Click, 102, 702
Sleep 4000
Click, 187, 784
Sleep 4000
Click, 100, 802
Sleep 4000
Click, 202, 693
return

; russian opening moves
$+f::
Send {F1}
Sleep 10
Send c
Sleep 10
Send m
Sleep 10
Send c
return

; NO IDLING, COMMRADES!!!!!!
; grabs all idle infantry with shift+scroll down

$+Wheeldown::
SendInput {LCtrl down}
BlockInput MouseMove
SendInput {:}
SendInput {LCtrl up}
BlockInput MouseMoveoff
return

$+z::Numpad0 ;opens tac map bc im tenkeyless.
; Roblox spambot
; by anonfoxer
; github.com/anonfoxer

#singleInstance force
#persistent
#noEnv
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

AntiSpam = 0

; F3::
; InputBox, fowards, Forwards, Input time to move forwards in ms
; InputBox, side, Side, Input the time to move sideways in ms.
; return

F5::
Toggle = 0
return

F6::
Toggle := !Toggle
    While Toggle{
    Send {W Down}
    Sleep 4000
    Send {W Up}
    Sleep 10
    Send {D Down}
    Sleep 2000
    Send {D Up}
    Sleep 10
    Send {S Down}
    Sleep 4000
    Send {S Up}
    Sleep 10
    Send {A Down}
    Sleep 2000
    Send {A Up}
    Sleep 10
    }
return
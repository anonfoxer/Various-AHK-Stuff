; Roblox spambot
; by anonfoxer
; github.com/anonfoxer

#singleInstance force
#persistent
#noEnv
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

AntiSpam = 0

F3::
InputBox, delay, Delay, Input time to wait in ms
InputBox, message, Message, Input the message to spam.
return

F5::
Toggle = 0
return

F6::
Toggle := !Toggle
    While Toggle{
    if(!AntiSpam) {
            Send {/}
            Sleep 10
            Send %message%
            Sleep 50
            Send {Enter}
            Sleep %delay%
        }
        else {
            Send {/}
            Random, antiSpamNum , 1, 5000
            Sleep 10
            Send %message% - %antiSpamNum% }
            Sleep 50
            Send {Enter}
            Sleep %delay%
        }
    }
return

F7::
AntiSpam := !AntiSpam
return
; xlip - Minecraft bedrock edition spambot with some extra features to test my AHK skills.
; made by anonfoxer
; github.com/anonfoxer
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#singleInstance force

F3::
InputBox, delay, Xlip - Delay, Input delay in ms!
InputBox, content, Xlip - Content, Input the term to spam
return

F5::
Toggle = 0
Send {Escape}
return

F6::
Send {t}
Toggle := !Toggle
While Toggle{
    Sleep 10
    Send %content%
    Sleep 50
    Send {Enter}
    Sleep %delay%
    }
return
        
; xlip - Minecraft bedrock edition external spambot with some extra features.
; made by anonfoxer
; github.com/anonfoxer
; I am not responsible if you use this and get in trouble for it
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#singleInstance force

AntiSpam = 0
; waterMark = 0

F3::
InputBox, delay, Xlip - Delay, Input delay in ms!
InputBox, content, Xlip - Content, Input the term to spam
return

F5::
tool("Xlip - Off")
Toggle = 0
Send {Escape}
return

F6::
tool("Xlip - On")
Send {t}
Toggle := !Toggle
While Toggle{
        if(!AntiSpam) {
            Sleep 10
            Send %content%
            Sleep 50
            Send {Enter}
            Sleep %delay%
        }
        else {
            Random, antiSpamNum , 1, 5000
            Sleep 10
            Send %content% - %antiSpamNum% }
            Sleep 50
            Send {Enter}
            Sleep %delay%
        }
    }
return


F7::
tool("Xlip - AntiSpam Bypass Toggled")  
AntiSpam := !AntiSpam
return


;StdLib - tooltip func
tool(content,wait=2500,x="",y=""){
    tooltip,% content,% x,% y
    setTimer,tOff,% "-" wait
    return
    tOff:
    tooltip
    return
}
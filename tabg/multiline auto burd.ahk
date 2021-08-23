#singleInstance force
#persistent
#noEnv
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

multiline:=0

F3::
MsgBox,, Auto-Burd Help, Default Hotkey: F15, Multiline = %multiline%, F3 - Show Help. F5 - Change messages. F6 - Toggle Multiline. v1.0
return

F6::
multiline:= !multiline
tool("Auto-Burd  - MultiLine set to: " . multiline)
return


F5::
if (multiline = 0) {
    InputBox, autoBurd, Auto-Burd v1.0, Input the message to throw
}
else {
    InputBox, line1, Auto-Burd v1.0, Input the First message to throw
    InputBox, line2, Auto-Burd v1.0, Input the second message to throw
    InputBox, line3, Auto-Burd v1.0, Input the third message to throw
    InputBox, line4, Auto-Burd v1.0, Input the fourth message to throw
}
return

F15::
if (multiline = 0) {
    Send {Enter}
    Sleep 10
    Send %autoBurd%
    Sleep 75
    Click
}
else {
    Send {Enter}
    Sleep 10
    Send %line1%
    Sleep 75
    Click
    Sleep 500
    Send {Enter}
    Sleep 10
    Send %line2%
    Sleep 75
    Click
    Sleep 500
    Send {Enter}
    Sleep 10
    Send %line3%
    Sleep 75
    Click
    Sleep 500
    Send {Enter}
    Sleep 10
    Send %line4%
    Sleep 75
    Click
}
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
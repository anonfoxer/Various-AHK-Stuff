#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

InputBox, delay, Delay, Input delay in ms!
InputBox, content, Content, Input the term to spam

F5::
Toggle = 0
return

F6::
    Toggle := !Toggle
     While Toggle{
         Send {y}
         Sleep 50
         Send %content%
         Send {Enter}
	Sleep %delay%
     }
return
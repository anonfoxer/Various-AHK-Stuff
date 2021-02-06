; Hiya! This script was made by anonfoxer
; github.com/anonfoxer
; This is NOT a cheat! I am not responsible if you edit this script to make it into one!
; Dec 7 2020
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

InputBox, delay, Delay, Input delay in ms!
InputBox, emote, Emote, Input the emote to repeat!

F5::
Toggle = 0
return

F6::
    Toggle := !Toggle
     While Toggle{
         Send %emote%
	Sleep %delay%
     }
return
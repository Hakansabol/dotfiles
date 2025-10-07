#Requires AutoHotkey v2.0

; CapsLock as Escape
CapsLock::Escape

; Rebind Right Alt (RAlt) to Backspace in AHK v2
;RAlt::Backspace
;^RAlt::^Backspace

;;; RALT BINDINGS
>!h::Left
>!j::Down
>!k::Up
>!l::Right

; Initialize variables
isLDown := false
isMDown := false
isRDown := false

; Shift + Alt + J => Left Click
+!j::{
    global isLDown
    if !isLDown {
        isLDown := true
        SendEvent("{LButton down}")
    }
}
+!j up::{
    global isLDown
    if isLDown {
        isLDown := false
        SendEvent("{LButton up}")
    }
}

; Shift + Alt + K => Middle Click
+!k::{
    global isMDown
    if !isMDown {
        isMDown := true
        SendEvent("{MButton down}")
    }
}
+!k up::{
    global isMDown
    if isMDown {
        isMDown := false
        SendEvent("{MButton up}")
    }
}

; Shift + Alt + L => Right Click
+!l::{
    global isRDown
    if !isRDown {
        isRDown := true
        SendEvent("{RButton down}")
    }
}
+!l up::{
    global isRDown
    if isRDown {
        isRDown := false
        SendEvent("{RButton up}")
    }
}


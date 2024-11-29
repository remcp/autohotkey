#Requires AutoHotkey v2.0
KeyHistory 100

global i := 0
global e := 0
global u := 0
global a := 0
global o := 0
global copyi := 0
:?*SEK10:@@::remcowouters2003@gmail.com

~q::{
    Reset()
}
~w::{
    Reset()
}
~r::{
    Reset()
}
~t::{
    Reset()
}
~y::{
    Reset()
}
~p::{
    Reset()
}
~s::{
    Reset()
}
~d::{
    Reset()
}
~f::{
    Reset()
}
~g::{
    Reset()
}
~h::{
    Reset()
}
~j::{
    Reset()
}
~k::{
    Reset()
}
~l::{
    Reset()
}
~z::{
    Reset()
}
~x::{
    Reset()
}
~c::{
    Reset()
}
~v::{
    Reset()
}
~b::{
    Reset()
}
~n::{
    Reset()
}
~m::{
    Reset()
}
$i::{
    Send("i")
    global i += 1
    if (i == 3){
        Send("{Backspace}{Backspace}{Backspace}í")
    }
    else if (i == 4){
        Send("{Backspace}{Backspace}ì")
    }
    else if (i == 5){
        Send("{Backspace}{Backspace}î")
    }
    else if (i == 6){
        Send("{Backspace}{Backspace}ï")
        i := 0
    }
    SetTimer(Reset, -700)
    return
}

$e::{
    Send("e")
    global e += 1
    if (e == 3){
        Send("{Backspace}{Backspace}{Backspace}é")
    }
    else if (e == 4){
        Send("{Backspace}{Backspace}è")
    }
    else if (e == 5){
        Send("{Backspace}{Backspace}ê")
    }
    else if (e == 6){
        Send("{Backspace}{Backspace}ë")
        e := 0
    }
    SetTimer(Reset, -700)
    return
}
$u::{
    Send("u")
    global u += 1
    if (u == 3){
        Send("{Backspace}{Backspace}{Backspace}ù")
    }
    else if (u == 4){
        Send("{Backspace}{Backspace}ú")
    }
    else if (u == 5){
        Send("{Backspace}{Backspace}û")
    }
    else if (u == 6){
        Send("{Backspace}{Backspace}ü")
        u := 0
    }
    SetTimer(Reset, -700)
    return
}
$a::{
    Send("a")
    global a += 1
    if (a == 3){
        Send("{Backspace}{Backspace}{Backspace}à")
    }
    else if (a == 4){
        Send("{Backspace}{Backspace}á")
    }
    else if (a == 5){
        Send("{Backspace}{Backspace}â")
    }
    else if (a == 6){
        Send("{Backspace}{Backspace}ä")
    }
    else if (a == 7){
        Send("{Backspace}{Backspace}ã")
    }
    else if (a == 8){
        Send("{Backspace}{Backspace}å")
        a := 0
    }
    SetTimer(Reset, -700)
    return
}
$o::{
    Send("o")
    global o += 1
    if (o == 3){
        Send("{Backspace}{Backspace}{Backspace}ò")
    }
    else if (o == 4){
        Send("{Backspace}{Backspace}ó")
    }
    else if (o == 5){
        Send("{Backspace}{Backspace}ô")
    }
    else if (o == 6){
        Send("{Backspace}{Backspace}ö")
    }
    else if (o == 7){
        Send("{Backspace}{Backspace}õ")
        o := 0
    }
    SetTimer(Reset, -700)
    return
}
Reset(){
    global i := 0
    global e := 0
    global u := 0
    global a := 0
    global o := 0
    return
}

#g::
{
    Run("https://github.com/remcp?tab=repositories")
}

#T::
{
    try{
        WinSetAlwaysOnTop -1, "A"
        WinTransDegree := WinGetTransparent("A")
        If (WinTransDegree = 100){
            WinSetTransparent "Off", "A"
        }
        else{
            WinSetTransparent 100, "A"
        }
    }
    catch{
        WinSetAlwaysOnTop 0, "A"
        MsgBox("failed to set transparent")
    }
}

#Y::
{
    try{
        WinSetAlwaysOnTop -1, "A"
        WinTransDegree := WinGetExStyle("A")
        If (WinTransDegree = 524576){
            WinSetExStyle(0x800000, "A")
            WinSetStyle "^0x800000", "A"
            WinSetTransparent "Off", "A"
        }
        else{
            WinSetExStyle(0x20, "A")
            WinSetStyle "^0x800000", "A"
            WinSetTransparent 100, "A"
        }
    }
    catch{
        WinSetAlwaysOnTop 0, "A"
        MsgBox("failed to set transparent")
    }
}

~^c::{
    Sleep(100)
    clipboard := A_Clipboard
    current := A_Now
    formatted := FormatTime(current, 'dd-MM-yyyy')
    path := A_MyDocuments "\copyfiles\"
    FileAppend (A_Clipboard '`n' 'Æ' '`n'), path '\' formatted '.txt'
}


Resetcopyi(){
    global copyi := 0
    return
}

#HotIf WinActive('ahk_exe explorer.exe')
^s::{
    path := ControlGetText("A")
    A_Clipboard := path
}


#HotIf

!Esc::ExitApp  
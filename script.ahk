#Requires AutoHotkey v2.0
KeyHistory 100

CoordMode('Pixel', 'Window')

global i := 0
global e := 0
global u := 0
global a := 0
global o := 0
global copyi := 0
global lastfile_location := ""
:?*SEK10:@GM::remcowouters2003@gmail.com
:?*SEK10:@BM::r.wouters@bm-holding.nl

#HotIf WinActive("ahk_exe Ssms.exe")

:*SEK10:sthf::SELECT TOP 100 * FROM


#HotIf
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
~$i::{
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

~$e::{
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
~$u::{
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
~$a::{
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
~$o::{
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
#f::{
    global lastfile_location
    path := lastfile_location
    Run("explorer " path)
}
#h::{
    Run("explorer C:\Users\remco\autohotkey")
}
!u::{
    WinGetPos(,,&x2,&y2,"A")
    x1 := 0
    y1 := 0
    count := 0
    found := 1
    notfound := 0
    ;MsgBox(x1 " " y1 " " x2 " " y2)
    loop{
        found := ImageSearch(&x, &y, x1, y1, x2, y2, "*10 " "C:\Users\remco\autohotkey\images\tabcross.bmp")

        if(found == 1){
            notfound := 0
            count := count + 1
            x1 := x + 1
            y1 := y
        }
        if(found == 0){
            x1 := 0
            y1 := y1 +1
            notfound := notfound + 1
        }

        if(y1 >= y2){
            break
        }
        if(notfound > 1){
            break
        }
    }
    MsgBox(count)
}
#HotIf WinActive('ahk_exe explorer.exe')
^s::{
    path := ControlGetText("A")
    split := StrSplit(path," ")
    split.RemoveAt(1)
    joined := ""
    for i in split{
        joined := joined i
    }
    global lastfile_location := joined
    A_Clipboard := path
}



#hotif WinExist("concept capiciteit manager - Microsoft Visual Studio")

#P::{
    id := WinGetPID("concept capiciteit manager - Microsoft Visual Studio")
    ;WinGetID("concept capiciteit manager - Microsoft Visual Studio")
    ;WinRestore("concept capiciteit manager - Microsoft Visual Studio")
    Sleep(500)
    ;WinMove(0,0,1000,800,"concept capiciteit manager - Microsoft Visual Studio")
    WinActivate("ahk_class WorkerW ahk_exe explorer.exe")
    Sleep(500)
    ControlSend("{Ctrl Down}{b} {Ctrl Up}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(50)
    WinGetPos(&x,&y,&w,&h,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ;bax
    ControlSend("{Ctrl Down}{Alt Down}{F3} {Ctrl Up}{Alt Up}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(400)
    ControlSend("{Down}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(50)
    ControlSend("{Enter}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    Sleep(2000)
    ControlSend("{Ctrl Down}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    ControlSend("{0}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    ControlSend("{Ctrl Down}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    ControlSend("{9}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    Sleep(8000)
    ;laserparts
    ControlSend("{Ctrl Down}{Alt Down}{F3} {Ctrl Up}{Alt Up}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(400)
    ControlSend("{Down} {Down} {Down}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(50)
    ControlSend("{Enter}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    Sleep(2000)
    ControlSend("{Ctrl Down}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    ControlSend("{0}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    ControlSend("{Ctrl Down}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    ControlSend("{9}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    Sleep(8000)
    ;qfin
    ControlSend("{Ctrl Down}{Alt Down}{F3} {Ctrl Up}{Alt Up}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(400)
    ControlSend("{Down} {Down} {Down} {Down} {Down} {Down}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(50)
    ControlSend("{Enter}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    Sleep(2000)
    ControlSend("{Ctrl Down}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    ControlSend("{0}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    ControlSend("{Ctrl Down}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    ControlSend("{9}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    Sleep(8000)
    ;rvs
    ControlSend("{Ctrl Down}{Alt Down}{F3} {Ctrl Up}{Alt Up}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(400)
    ControlSend("{Down} {Down} {Down} {Down} {Down} {Down} {Down}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(50)
    ControlSend("{Enter}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    Sleep(2000)
    ControlSend("{Ctrl Down}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    ControlSend("{0}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    ControlSend("{Ctrl Down}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    ControlSend("{9}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    Sleep(8000)

    
    ; ;publishing
    ; ;bax
    
    

    ControlSend("{Ctrl Down}{Alt Down}{F3} {Ctrl Up}{Alt Up}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(400)
    ControlSend("{Down}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(50)
    ControlSend("{Enter}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    Sleep(2000)
    ControlSend("{Tab}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ControlSend("{Ctrl Down}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    ControlSend("{b}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ControlSend("{Tab}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ControlSend("{Up}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ControlSend("{Up}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ControlSend("{Up}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ControlSend("{Up}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ControlSend("{Enter}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(2000)
    Sleep(20000)

    ; ;laserparts
    ControlSend("{Ctrl Down}{Alt Down}{F3} {Ctrl Up}{Alt Up}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(400)
    ControlSend("{Down} {Down} {Down}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(50)
    ControlSend("{Enter}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    Sleep(2000)
    ControlSend("{Ctrl Down}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    ControlSend("{b}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ControlSend("{Tab}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ControlSend("{Down}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ControlSend("{Down}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ControlSend("{Down}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ControlSend("{Enter}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(2000)
    Sleep(20000)

    ; ;qfin
    ControlSend("{Ctrl Down}{Alt Down}{F3} {Ctrl Up}{Alt Up}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(400)
    ControlSend("{Down} {Down} {Down} {Down} {Down} {Down}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(50)
    ControlSend("{Enter}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    Sleep(2000)
    ControlSend("{Ctrl Down}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    ControlSend("{b}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ControlSend("{Tab}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ControlSend("{Up}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ControlSend("{Up}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ControlSend("{Enter}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(2000)
    Sleep(20000)

    ; ;rvs
    ControlSend("{Ctrl Down}{Alt Down}{F3} {Ctrl Up}{Alt Up}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(400)
    ControlSend("{Down} {Down} {Down} {Down} {Down} {Down} {Down}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(50)
    ControlSend("{Enter}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    Sleep(2000)
    ControlSend("{Ctrl Down}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(20)
    ControlSend("{b}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ControlSend("{Tab}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ControlSend("{Down}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ControlSend("{Enter}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(2000)
    Sleep(20000)


    ControlSend("{Ctrl Down}{Alt Down}{F3} {Ctrl Up}{Alt Up}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(400)
    ControlSend("{Down} {Down}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(50)
    ControlSend("{Enter}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
}
#HotIf


^Esc::Reload
!Esc::ExitApp
global mx1 := 0
global my1 := 0
global mx2 := 0
global my2 := 0
global set := 0
global hwnd

global printcount := 0
global i := 0
global e := 0
global u := 0
global a := 0
global o := 0
global copyi := 0
global lastfile_location := ""
MyGui := Gui("+ Resize + ToolWindow")


#Requires AutoHotkey v2.0
KeyHistory 100
#MaxThreadsPerHotkey 2

#Include ..\autohotkey\screenshots\gdip.ahk
CoordMode("Pixel", "Screen")
CoordMode("Mouse", "Window")


:C1*SEK10:@GM::remcowouters2003@gmail.com
:C1*SEK10:@BM::r.wouters@bm-holding.nl
:C1*SEK10:@fontys::i514465@fontysict.nl

:C1*SEK10:@WWGM::Kareltje1{!}
:C1*SEK10:@WWBM::V{!}ezeSchoen{$}29
:C1*SEK10:@wwfontys::Knabfiggep6

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
~Space::{
    Reset()
}
~BackSpace::{
    Reset()
} 
~Shift::{
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
#r::
{
    try{
        WinTransDegree := WinGetTransparent("A")
        if(WinTransDegree == ""){
            WinSetTransparent 5, "A"
        }
        else If (WinTransDegree < 255){
            WinSetTransparent "Off", "A"
        }
        
    }
    catch{
        MsgBox("failed to set transparent")
    }
}
#T::
{
    try{
        WinSetAlwaysOnTop -1, "A"
        WinTransDegree := WinGetTransparent("A")
        if(WinTransDegree == ""){
            WinSetTransparent 50, "A"
        }
        else If (WinTransDegree < 255){
            WinSetTransparent "Off", "A"
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


#z::{
    global printcount
    global mx1
    global my1
    global mx2
    global my2
    global hwnd
    global screenshotexe
    
    printcount += 1

    switch(printcount){
        case 1:
            screenshotexe := WinGetProcessName("A")
            hwnd := WinExist("ahk_exe " screenshotexe)
            MouseGetPos(&x, &y)
            mx1 := x
            my1 := y
        case 2:
            MouseGetPos(&x, &y)
            mx2 := x
            my2 := y
        case 3:
            SetTimer(screenshot, 30)
        case 4:
            printcount := 0
            SetTimer(screenshot,0)
            MsgBox("stopped screencapture")
    }
}

#hotif WinExist(MyGui)
#a::
{
    WinSetAlwaysOnTop -1, MyGui
    
}

#q::
{
    WinActivate(MyGui)
}

#x::
{
    WinMinimize(MyGui)
}
#d::{
    WinRestore(MyGui)
}
#hotif WinActive("ahk_class CROSVM_1")
1::
{
    ControlClick("x150 y650", "Clash Royale ahk_exe crosvm.exe",,"L",1,"NA")
    
}

2::
{
    ControlClick("x200 y650", "Clash Royale ahk_exe crosvm.exe",,"L",1,"NA")
}

3::
{
    ControlClick("x300 y650", "Clash Royale ahk_exe crosvm.exe",,"L",1,"NA")
}
4::{
    ControlClick("x390 y650", "Clash Royale ahk_exe crosvm.exe",,"L",1,"NA")
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
    WinGetPos(&x,&y,&w,&h,"concept capiciteit manager - Microsoft Visual Studio")
    id := WinGetPID("concept capiciteit manager - Microsoft Visual Studio")
    ;WinGetID("concept capiciteit manager - Microsoft Visual Studio")
    WinRestore("concept capiciteit manager - Microsoft Visual Studio")



    Sleep(500)
    WinMove(x,y,1000,800,"concept capiciteit manager - Microsoft Visual Studio")
    WinActivate("ahk_class WorkerW ahk_exe explorer.exe")

    ;WinSetEnabled(-1,"concept capiciteit manager - Microsoft Visual Studio")

    Sleep(3000)
    ControlSend("{Ctrl Down}{b} {Ctrl Up}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(50)
    WinGetPos(&x,&y,&w,&h,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    ;bax
    ControlSend("{Ctrl Down}{Alt Down}{F3} {Ctrl Up}{Alt Up}",,"ahk_exe devenv.exe")
    Sleep(400)
    ControlSend("{Down}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(50)
    ControlSend("{Enter}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    Sleep(2000)
    ControlSend("{Ctrl Down}",,"ahk_exe devenv.exe")
    Sleep(100)
    ControlSend("{0}",,"ahk_exe devenv.exe")
    Sleep(100)
    ControlSend("{Ctrl Down}",,"ahk_exe devenv.exe")
    Sleep(100)
    ControlSend("{9}",,"ahk_exe devenv.exe")
    Sleep(20)
    Sleep(8000)
    ;laserparts
    ControlSend("{Ctrl Down}{Alt Down}{F3} {Ctrl Up}{Alt Up}",,"ahk_exe devenv.exe")
    Sleep(400)
    ControlSend("{Down} {Down} {Down}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(50)
    ControlSend("{Enter}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    Sleep(2000)
    ControlSend("{Ctrl Down}",,"ahk_exe devenv.exe")
    Sleep(100)
    ControlSend("{0}",,"ahk_exe devenv.exe")
    Sleep(100)
    ControlSend("{Ctrl Down}",,"ahk_exe devenv.exe")
    Sleep(100)
    ControlSend("{9}",,"ahk_exe devenv.exe")
    Sleep(100)
    Sleep(8000)
    ;qfin
    ControlSend("{Ctrl Down}{Alt Down}{F3} {Ctrl Up}{Alt Up}",,"ahk_exe devenv.exe")
    Sleep(400)
    ControlSend("{Down} {Down} {Down} {Down} {Down} {Down}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(50)
    ControlSend("{Enter}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    Sleep(2000)
    ControlSend("{Ctrl Down}",,"ahk_exe devenv.exe")
    Sleep(100)
    ControlSend("{0}",,"ahk_exe devenv.exe")
    Sleep(100)
    ControlSend("{Ctrl Down}",,"ahk_exe devenv.exe")
    Sleep(100)
    ControlSend("{9}",,"ahk_exe devenv.exe")
    Sleep(100)
    Sleep(8000)
    ;rvs
    ControlSend("{Ctrl Down}{Alt Down}{F3} {Ctrl Up}{Alt Up}",,"ahk_exe devenv.exe")
    Sleep(400)
    ControlSend("{Down} {Down} {Down} {Down} {Down} {Down} {Down}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(50)
    ControlSend("{Enter}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    Sleep(2000)
    ControlSend("{Ctrl Down}",,"ahk_exe devenv.exe")
    Sleep(100)
    ControlSend("{0}",,"ahk_exe devenv.exe")
    Sleep(100)
    ControlSend("{Ctrl Down}",,"ahk_exe devenv.exe")
    Sleep(100)
    ControlSend("{9}",,"ahk_exe devenv.exe")
    Sleep(20)
    Sleep(8000)

    
    ; ;publishing
    ; ;bax
    
    

    ControlSend("{Ctrl Down}{Alt Down}{F3} {Ctrl Up}{Alt Up}",,"ahk_exe devenv.exe")
    Sleep(400)
    ControlSend("{Down}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(50)
    ControlSend("{Enter}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    Sleep(2000)
    ControlSend("{Tab}",,"ahk_exe devenv.exe")
    Sleep(200)
    ControlSend("{Ctrl Down}",,"ahk_exe devenv.exe")
    Sleep(20)
    ControlSend("{b}",,"ahk_exe devenv.exe")
    Sleep(200)
    ControlSend("{Tab}",,"ahk_exe devenv.exe")
    Sleep(200)
    ControlSend("{Up}",,"ahk_exe devenv.exe")
    Sleep(200)
    ControlSend("{Up}",,"ahk_exe devenv.exe")
    Sleep(200)
    ControlSend("{Up}",,"ahk_exe devenv.exe")
    Sleep(200)
    ControlSend("{Up}",,"ahk_exe devenv.exe")
    Sleep(200)
    ControlSend("{Enter}",,"ahk_exe devenv.exe")
    Sleep(4000)
    ;Sleep(20000)
    loop{
        check := PixelSearch(&check1, &check2, x + 300, y + 230, x + w - 300, y + h - 500, 0x7EE07E,10)
        if(check == 1){
            Sleep(2000)
            break
        }
    }
    ; ;laserparts
    ControlSend("{Ctrl Down}{Alt Down}{F3} {Ctrl Up}{Alt Up}",,"ahk_exe devenv.exe")
    Sleep(400)
    ControlSend("{Down} {Down} {Down}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(50)
    ControlSend("{Enter}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(200)
    Sleep(2000)
    ControlSend("{Ctrl Down}",,"ahk_exe devenv.exe")
    Sleep(20)
    ControlSend("{b}",,"ahk_exe devenv.exe")
    Sleep(200)
    ControlSend("{Tab}",,"ahk_exe devenv.exe")
    Sleep(200)
    ControlSend("{Down}",,"ahk_exe devenv.exe")
    Sleep(200)
    ControlSend("{Down}",,"ahk_exe devenv.exe")
    Sleep(200)
    ControlSend("{Down}",,"ahk_exe devenv.exe")
    Sleep(200)
    ControlSend("{Enter}",,"ahk_exe devenv.exe")
    Sleep(4000)
    ;Sleep(20000)
    loop{
        check := PixelSearch(&check1, &check2, x + 300, y + 230, x + w - 300, y + h - 500, 0x7EE07E,10)
        if(check == 1){
            Sleep(2000)
            break
        }
    }

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
    Sleep(4000)
    ;Sleep(20000)
    loop{
        check := PixelSearch(&check1, &check2, x + 300, y + 230, x + w - 300, y + h - 500, 0x7EE07E,10)
        if(check == 1){
            Sleep(2000)
            break
        }
    }
            
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
    Sleep(4000)
    ;Sleep(20000)
    loop{
        check := PixelSearch(&check1, &check2, x + 300, y + 230, x + w - 300, y + h - 500, 0x7EE07E,10)
        if(check == 1){
            Sleep(2000)
            break
        }
    }


    ControlSend("{Ctrl Down}{Alt Down}{F3} {Ctrl Up}{Alt Up}",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(400)
    ControlSend("{Down} {Down}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
    Sleep(50)
    ControlSend("{Enter}",,"ahk_exe devenv.exe",,"concept capiciteit manager - Microsoft Visual Studio")
}
#HotIf

screenshot(){
    ;my_picturefile := "C:\Users\remco\autohotkey\screenshots\bitmaps"

    global mx1
    global my1
    global mx2
    global my2
    global set
    global hwnd
    global screenshotexe

    WinGetPos(,,&w,&h,"ahk_exe " screenshotexe)

	pToken := Gdip_Startup() ;Start using Gdip

    hdc := DllCall("GetDC", "Ptr", hwnd, 'ptr')
    hdcMem := DllCall("gdi32.dll\CreateCompatibleDC", "Ptr", hdc, "Ptr")
    hbm := DllCall("gdi32.dll\CreateCompatibleBitmap", "Ptr", hdc, "Int", w, "Int", h, "Ptr")
    DllCall("gdi32.dll\SelectObject", "Ptr", hdcMem, "Ptr", hbm)
    
    result := DllCall("PrintWindow", "Ptr", hwnd, "Ptr", hdcMem, "UInt", 0x2)
    if !result {
        MsgBox "PrintWindow failed!"
        DllCall("gdi32.dll\DeleteObject", "Ptr", hbm)
        DllCall("gdi32.dll\DeleteDC", "Ptr", hdcMem)
        DllCall("ReleaseDC", "Ptr", hwnd, "Ptr", hdc)
        return
    }
    
    bitmap := Gdip_CreateBitmapFromHBITMAP(hbm)
    
    croppedBitmap := Gdip_CreateBitmap(mx2 - mx1, my2 - my1)
    graphics := Gdip_GraphicsFromImage(croppedBitmap)

    Gdip_DrawImagePointsRect(
        graphics,        ; Graphics object for the new bitmap
        bitmap,          ; Source bitmap
        0 "," 0 "|" mx2 - mx1 "," 0 "|" 0 "," my2 - my1, ; Destination rectangle
        mx1, my1, mx2 - mx1, my2 - my1, ; Source rectangle
    )
    memimage := Gdip_CreateHBITMAPFromBitmap(croppedBitmap)

    if(set == 1){
        Sleep(10)
        
         MyGui['Pic'].Value := "HBITMAP:" memimage
    }else{
        MyGui.Add("Picture", "vPic", "HBITMAP:" memimage)
        MyGui.Show("AutoSize NoActivate")
        set := 1
    }
    Gdip_DisposeImage(bitmap)
    Gdip_DisposeImage( croppedBitmap )
    Gdip_DeleteGraphics(graphics)

	DllCall("gdi32.dll\DeleteObject", "Ptr", hbm)
    DllCall("gdi32.dll\DeleteDC", "Ptr", hdcMem)
    DllCall("ReleaseDC", "Ptr", hwnd, "Ptr", hdc)
    Gdip_Shutdown( pToken )

	return
}


^Esc::Reload
!Esc::ExitApp
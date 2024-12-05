#Requires AutoHotkey v2.0

global mx1 := 0
global my1 := 0
global mx2 := 0
global my2 := 0

global printcount := 0
global i := 0
global e := 0
global u := 0
global a := 0
global o := 0
global copyi := 0
global lastfile_location := ""
MyGui := Gui()

#Requires AutoHotkey v2.0
KeyHistory 100
#MaxThreadsPerHotkey 2
CoordMode("Pixel", "Screen")
CoordMode("Mouse", "Screen")


#w::{
    MyGui.Show
    MyGui.SetFont("s10")
    global mx1
    global my1
    global mx2
    global my2
    MouseGetPos(&m1x,&m1y)
    mx1 := m1x -500
    my1 := m1y - 50
    mx2 := m1x + 500
    my2 := m1y + 50
    Draw()
}

Draw(){
    global mx1, my1, mx2, my2
    x1 := mx1
    y1 := my1
    x2 := mx2
    y2 := my2

    p1 := 0
    p2 := 0
    
    processed := 0
    
    

    totalPixels := (x2 - mx1) * (y2 - my1)
    processedPixels := 0
    loop{
        grouped := Mod(processed, 10)
        if(grouped == 0){
            color := PixelGetColor(x1, y1, true)
            ;MsgBox(color)
            MyGui.Add("Text","c" color " " "x" p1 * 10 " y" p2 * 10 " w" 10 " h" 10,"█")
            ;MyGui.Add("Text","c" color " " "x" p1 *10 " y" p2 *10 " w" 10 " h" 10,"█")
            p1 += 1
        }
        x1 += 1
        
        if(x1 >= x2){
            x1 := mx1
            y1 += 1
            p1 := 0
            p2 += 1

            if(y1 >= y2){
                break
            }
        }
        processed += 1
    }
    MyGui.Show("AutoSize")
}


^Esc::Reload
!Esc::ExitApp
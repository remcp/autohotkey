;#Requires AutoHotkey v2.0

#Requires autohotkey v2.0

#Include ..\screenshots\gdip.ahk
^Esc::Reload
!Esc::ExitApp

#z::{
    screenshot()
}

screenshot(){
	pToken := Gdip_Startup() ;Start using Gdip
	ClipBitmap := Gdip_BitmapFromScreen( 100 "|" 100 "|" 110 "|" 110 ) ;Create a bitmap of the screen.
	
	Gdip_SaveBitmapToFile( ClipBitmap , "C:\Users\remco\autohotkey\screenshots\bitmaps\autoscreencap" ".png" , 100 ) ; Save the bitmap to file
	Gdip_DisposeImage( ClipBitmap ) ;Dispose of the bitmap to free memory.
	Gdip_Shutdown( pToken ) ;Turn off gdip
	return
}
HotKeySet("{ESC}", "Terminate")


$title = "Big Business Deluxe"
$active = WinActivate($title)

If $active Then
   $POS = WinGetPos($title)
   While 1
	  Sleep(100)
	  $cross = PixelSearch($POS[0], $POS[1], $POS[2], $POS[3], 0xD24E40)
	  If Not @error Then
		 Sleep(100)
		 MouseClick( "left", $cross[0], $cross[1],1,1)
		 Sleep(100)
	  Else
		 Sleep(300)
	  EndIf
	  Sleep(100)
	  $gold = PixelSearch($POS[0], $POS[1], $POS[2], $POS[3], 0xFDD558)
	  If Not @error Then
		 Sleep(100)
		 MouseMove($gold[0], $gold[1],1)
		 Sleep(100)
		 MouseClick("left")
		 Sleep(100)
	  Else
		 Sleep(100)
	  EndIf
	  Sleep(100)
   WEnd
Else
   ConsoleWrite("Not Activate Window")
   Exit
EndIf


Func Close($POS)
   $cross = PixelSearch($POS[0], $POS[1], $POS[2], $POS[3], 0xD24E40)
   If Not @error Then
	  Sleep(300)
	  MouseClick( "left", $cross[0], $cross[1],1,5)
   EndIf
EndFunc

Func ClickMoney($POS)
   $gold = PixelSearch($POS[0], $POS[1], $POS[2], $POS[3], 0xFDD558)
   If Not @error Then
	  MouseClick( "left", $gold[0], $gold[1],1,5)
	  Sleep(300)
   EndIf
EndFunc

Func Terminate()
    Exit 0
EndFunc
HotKeySet("{ESC}", "Terminate")


$title = "Big Business Deluxe"
$active = WinActivate($title)

If $active Then
   $POS = WinGetPos($title)
   While True
	  Close($POS)
	  ClickMoney($POS)
	  Sleep(300)
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
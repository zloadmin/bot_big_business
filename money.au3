HotKeySet("{ESC}", "Terminate")


$title = "Big Business Deluxe"
$active = WinActivate($title)

If $active Then
   $POS = WinGetPos($title)
   While True
	  IsClose($POS)
	  ClickMoney($POS)
   WEnd
Else
   ConsoleWrite("Not Activate Window")
   Exit
EndIf


Func IsClose($POS)
   $cross = PixelSearch($POS[0], $POS[1], $POS[2], $POS[3], 0xD24E40)
   If Not @error Then
	  MouseClick( "left", $cross[0], $cross[1],1,0)
   EndIf
EndFunc

Func ClickMoney($POS)
   $gold = PixelSearch($POS[0], $POS[1], $POS[2], $POS[3], 0xFDD557)
   If Not @error Then
	  MouseClick( "left", $gold[0], $gold[1],1,0)
   EndIf
EndFunc

Func Terminate()
    Exit 0
EndFunc
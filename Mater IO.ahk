;^ = Ctrl
;+ = Shift
;! = Alt
;# = Windows Key

SetTitleMatchMode RegEx ;
#SingleInstance, Force

;	Main Script


F13::									;G1
if WinExist("Master IO List"){
	WinActivate
	loop, 20{
		send {F2} 
		send ^a
		send {Left}
		loop, 8 {
			send {Right}
			}
		send {Delete}5
		send {Enter}
		}
	}
else {
	msgbox, 16, ,Master IO is not open. 
}	
return

F14::									;G2
if WinExist("Master IO List"){
	WinActivate
	send _ {Tab}
	send _ {Tab}
	send _ 
	send {Enter}
}
else {
	msgbox, 16, ,Master IO is not open. 
}
return

F15::									;G3
if WinExist("Master IO List"){
	WinActivate
	send ^f									;for_IO_Master
	sleep 300
	send {Enter}
	sleep 300
	send {Esc}{Right}
	send ^v
	send {Right}
	}
else {
	msgbox, 16, ,Master IO is not open. 
}
return

F16::									;G4	
if WinExist("Master IO List"){
	WinActivate
	Send, {Enter}
	send, {F2}
	loop, 4{
		send ^{Left}
	}
	send, {Left}
	send, {Left}
	send, {Backspace}
	send, {Backspace}
	send, {Backspace}
	}
else {
	msgbox, 16, ,Master IO is not open. 
}
return

F17::										;Copy for PDF to Excel Creating Master IO
loop, 44
{
	send +{End}
	sleep 300
	send ^c
	sleep 300
	WinActivate, Book2
	WinWaitActive, Book2
	send ^v
	sleep 300
	send {Down}
	sleep 300
	WinActivate, 17228
	WinWaitActive, 17228
	sleep 300
	send {Right}{Left} 
}
return

F18::
return

F19::MsgBox You pressed !
return

F20::MsgBox You pressed !
return

F21::MsgBox You pressed !
return

F22::MsgBox You pressed !
return

F23::MsgBox You pressed !
return

F24::MsgBox You pressed !
return

^+!F1::										;Run Default.ahk
Run, C:\Users\rowdy\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Default.ahk
ExitApp

^+!F2::										;Run Owlwise.ahk
Run, C:\Users\rowdy\Desktop\OwlW1z3.ahk
ExitApp

^+!F3::										;Run .ahk
SetTitleMatchMode, 2
Process, Exist, AutoCorrect.ahk
if !ErrorLevel = 0
{
    winClose  C:\Users\rowdy\Documents\AutoHotKey\AutoCorrect.ahk
}
else
{
    Run, C:\Users\rowdy\Documents\AutoHotKey\AutoCorrect.ahk
}
return

^+!F4::										;Run .ahk
Run, C:\Users\rowdy\Desktop\Mater IO.ahk
ExitApp

;Keyboard Shortcut - CTRL + Alt + H			Toggles hidden files/folders
^!h::
RegRead, HiddenFiles_Status, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden 
If HiddenFiles_Status = 2
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 1
Else
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 2
send {F5}
return

#o::										;Save and Run updates to Master IO.ahk script
send ^s
Run, C:\Users\rowdy\Desktop\Mater IO.ahk
return

#t::										;TEST SCRIPT HERE
msgbox, 16, , This was a test.
return

^!e::
RegRead, HiddenFiles_Status, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt
If HiddenFiles_Status = 1
	RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt, 0
Else{
	RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt, 1)
}
send, {F5}
Return

!Numpad1::									;MASTER IO Shortinging the names
send ^c
send {Right}{Right}{Right}{Right}{Right}
send ^v
send {ESC}
send {F2}
send ^a
sleep 100
send ^c
sleep 300
WinActivate, Document1 - Word
sleep 300
send ^v
return

!Numpad2::									;MASTER IO
send ^a
send ^x
sleep 300
WinActivate, Master IO List - 18047
sleep 300
send ^v
sleep 300
send {Enter}
send {Left}{Left}{Left}{Left}{Left}

send ^c
send {Right}{Right}{Right}{Right}{Right}
send ^v
send {ESC}
send {F2}
send ^a
sleep 100
send ^c
sleep 300
WinActivate, Document1 - Word
sleep 300
send ^v

return

+Backspace:: 					;Shift Backspace to Delete
send {Delete}
return

+Delete:: 					;Shift Backspace to Delete
send {Backspace}
return

!w::							;awsd movement
send {up}
return

!a::							;awsd movement
send {left}
return

!s::							;awsd movement
send {down}
return

!d::							;awsd movement
send {right}
return

!+w::							;awsd movement
send +{up}
return

!+a::							;awsd movement
send +{left}
return

!+s::							;awsd movement
send +{down}
return

!+d::							;awsd movement
send +{right}
return

!^w::							;awsd movement
send ^{up}
return

!^a::							;awsd movement
send ^{left}
return

!^s::							;awsd movement
send ^{down}
return

!^d::							;awsd movement
send ^{right}
return

!+^w::							;awsd movement
send ^+{up}
return

!+^a::							;awsd movement
send ^+{left}
return

!+^s::							;awsd movement
send ^+{down}
return

!+^d::							;awsd movement
send ^+{right}
return

#z::Pause			;will pause a script while it is running, good if you accidently run the wrong one
return				;	and it starts to go crazy
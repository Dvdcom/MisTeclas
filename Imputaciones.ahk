#SingleInstance, Force
#Persistent

WinGetTitle, vTituloVen, A
Gui, Font, s8 bold underline cRed
Gui, Add, Text, y5 x5, 961 - IMPUTACION INSTALACIONES EQUIPOS:
Gui, Font
Gui, Add, Text, y30 x5, Orden Real MODEMS : 
Gui, add, Button, y25 x135 gCodInstaModems, Imputacion

Gui, Add, Text, y60 x5, Orden Real DECOS : 
Gui, add, Button, y55 x135 gCodInstaDecos, Imputacion

Gui, Font, s8 bold underline cRed
Gui, Add, Text, y90 x5 , 963 - IMPUTACION INSTALACION MATERIALES:
Gui, Font

Gui, Add, Text, y120 x5, Ceco - Cebe - Cuenta : 
Gui, add, Button, y115 x135 gCodInstaMat, Imputacion

Gui, Font, s8 bold underline cBlue
Gui, Add, Text, y150 x5 , 963 - IMPUTACION SERVICE EQUIPOS:
Gui, Font

Gui, Add, Text, y180 x5, Orden+Cuenta MODEMS : 
Gui, add, Button, y175 x135 gCodServiceModem, Imputacion

Gui, Add, Text, y210 x5, Orden+Cuenta DECOS : 
Gui, add, Button, y205 x135 gCodServiceDeco, Imputacion

Gui, Font, s8 bold underline cBlue
Gui, Add, Text, y240 x5 , 963 - IMPUTACION SERVICE MATERIALES:
Gui, Font

Gui, Add, Text, y270 x5, Ceco - Cebe - Cuenta : 
Gui, add, Button, y265 x135 gCodServicetaMat, Imputacion

Gui, +AlwaysOnTop
Gui, Show, x900 y50 w300 h300, Imputaciones
return

GuiClose:
	ExitApp
return

;Acciones de botones
;---------------------------------------------------------------

CodInstaModems:
;~ 600900001281
Gui, Submit, NoHide
IfWinExist, Salida de mercancías Otros - DAVID ESTEBAN GUTIERREZ
{
WinActivate, %vTituloVen%
SendInput, 600900001281
Send, {ENTER}
}
else
{
	MsgBox, Boton solo disponible para ventana de Salida
}
ExitApp


CodInstaDecos: 
;~ 600900000989
Gui, Submit, NoHide
IfWinExist, Salida de mercancías Otros - DAVID ESTEBAN GUTIERREZ
{
WinActivate, %vTituloVen%
SendInput, 600900000989
Send, {ENTER}
}
else
{
	MsgBox, Boton solo disponible para ventana de Salida
}
ExitApp


CodInstaMat: 
;~ A0011026
;~ FMCSUR
;~ 5019001032
Gui, Submit, NoHide
IfWinExist, Salida de mercancías Otros - DAVID ESTEBAN GUTIERREZ
{
WinActivate, %vTituloVen%
SendInput, A0011026
Send, {TAB}
Send, {TAB}
SendInput, FMCSUR
Send, {TAB}
SendInput, 5019001032
Send, {ENTER}
}
else
{
	MsgBox, Boton solo disponible para ventana de Salida
}
ExitApp

CodServiceModem: 
;~ 600900000697
;~ 5019001033
Gui, Submit, NoHide
IfWinExist, Salida de mercancías Otros - DAVID ESTEBAN GUTIERREZ
{
WinActivate, %vTituloVen%
SendInput, 600900000697
Send, {TAB}
Send, {TAB}
SendInput, 5019001033
Send, {ENTER}
}
else
{
	MsgBox, Boton solo disponible para ventana de Salida
}
ExitApp

CodServiceDeco: 
;~ 600900000405
;~ 5019001033
Gui, Submit, NoHide
IfWinExist, Salida de mercancías Otros - DAVID ESTEBAN GUTIERREZ
{
WinActivate, %vTituloVen%
SendInput, 600900000405
Send, {TAB}
Send, {TAB}
SendInput, 5019001033
Send, {ENTER}
}
else
{
	MsgBox, Boton solo disponible para ventana de Salida
}
ExitApp

CodServicetaMat: 
;~ A0011026
;~ FMCSUR
;~ 5019001020
Gui, Submit, NoHide
IfWinExist, Salida de mercancías Otros - DAVID ESTEBAN GUTIERREZ
{
WinActivate, %vTituloVen%
SendInput, A0011026
Send, {TAB}
Send, {TAB}
SendInput, FMCSUR
Send, {TAB}
SendInput, 5019001020
Send, {ENTER}
}
else
{
	MsgBox, Boton solo disponible para ventana de Salida
}
ExitApp
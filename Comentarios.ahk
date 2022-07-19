#SingleInstance, Force

WinGetTitle, vTituloVentana, A
Gui, Font, s10 bold underline
Gui, Add, Text, x10 y10, Elija un comentario de ENTRADAS:
Gui, Font,
Gui, Add, Radio, x10 y40 vRopcion1 gEtiquetas_Radio, INGRESO P/DEVOLUCION
Gui, Add, Radio, vRopcion2 gEtiquetas_Radio, INGRESO C/COD. CORRECTO
Gui, Add, Radio, vRopcion3 gEtiquetas_Radio, INGRESO X CAMION
Gui, Font, s10 bold underline
Gui, Add, Text, y+10, Elija un comentario de SALIDAS:
Gui, Font,
Gui, Add, Radio, y+10 vRopcion4 gEtiquetas_Radio, SALIDA X/COD. INCORRECTO
Gui, Add, Radio, vRopcion5 gEtiquetas_Radio, CONSUMO POR N/N FUNCIONA
Gui, Add, Radio, vRopcion12 gEtiquetas_Radio, CONSUMOS PENDIENTES
Gui, Font, s10 bold underline
Gui, Add, Text, y+10, Elija un comentario de TRASPASOS:
Gui, Font,
Gui, Add, Radio, y+10 vRopcion6 gEtiquetas_Radio, TRASPASO P/DEVOLUCION
Gui, Add, Radio, vRopcion7 gEtiquetas_Radio, TRASPASO EN CALLE
Gui, Add, Radio, vRopcion8 gEtiquetas_Radio, REPOSICION DEL DIA
Gui, Add, Radio, vRopcion9 gEtiquetas_Radio, PED. HERR & ELEM PEP
Gui, Add, Radio, vRopcion11 gEtiquetas_Radio, PEDIDO DE MATERIALES
Gui, Font, s10 bold underline
Gui, Add, Text, y+10, Elija un comentario de OTROS:
Gui, Font,
Gui, Add, Radio, y+10 vRopcion10 gEtiquetas_Radio, A PEDIDO SUPERVISOR
Gui, +AlwaysOnTop
;Gui, Color, DCDCDC
Gui,Show, x900 y50 w280 h370, Comentarios
return

;Acciones de botones
;---------------------------------------------------------------

Etiquetas_Radio:
Gui, Submit, Nohide
if (Ropcion1 = 1)
{
WinActivate, %vTituloVentana%
SendInput, INGRESO P/DEVOLUCION
ExitApp
}
if (Ropcion2 = 1)
{
WinActivate, %vTituloVentana%
SendInput, INGRESO C/COD. CORRECTO
ExitApp
}
if (Ropcion3 = 1)
{
WinActivate, %vTituloVentana%
SendInput, INGRESO X CAMION
ExitApp
}
if (Ropcion4 = 1)
{
WinActivate, %vTituloVentana%
SendInput, SALIDA X/COD. INCORRECTO
ExitApp
}
if (Ropcion5 = 1)
{
WinActivate, %vTituloVentana%
SendInput, CONSUMO POR N/N FUNCIONA
ExitApp
}
if (Ropcion6 = 1)
{
WinActivate, %vTituloVentana%
SendInput, TRASPASO P/DEVOLUCION
ExitApp
}
if (Ropcion7 = 1)
{
WinActivate, %vTituloVentana%
SendInput, TRASPASO EN CALLE
ExitApp
}
if (Ropcion8 = 1)
{
WinActivate, %vTituloVentana%
SendInput, REPOSICION DEL DIA
ExitApp
}
if (Ropcion9 = 1)
{
WinActivate, %vTituloVentana%
SendInput, PED. HERR & ELEM PEP
ExitApp
}
if (Ropcion10 = 1)
{
WinActivate, %vTituloVentana%
SendInput, A PEDIDO SUPERVISOR
ExitApp
}
if (Ropcion11 = 1)
{
WinActivate, %vTituloVentana%
SendInput, PEDIDO DE MATERIALES
ExitApp
}
if (Ropcion12 = 1)
{
WinActivate, %vTituloVentana%
SendInput, CONSUMOS PENDIENTES
ExitApp
}
return

GuiClose:
	ExitApp
return

#SingleInstance, force
#Persistent

;Variables Globales 
global Usuario := "user_credencial"
global PassWin := "pass_credencial"
global PassOpen := "pass_credencial"

;___________________________Menu_____________________________

{
	Menu, menu_principal, Add, Temporales, temporales
	Menu, menu_principal, Add, Almacenes, plus
	Menu, menu_principal, Add, Aplicaciones, plus
	Menu, menu_principal, Add, Archivos, plus
	Menu, menu_principal, Add, Carpetas, plus
	
	Menu, menu_primario, Add, Alm_TM, func1
	Menu, menu_primario, Add, Alm_TT, func2
	Menu, menu_primario, Add, Redes, func3
	Menu, menu_primario, Add, Services, func4
	Menu, menu_primario, Add, Supervisores, plus
	
	Menu, menu_secundario, Add, SAP, app1
	Menu, menu_secundario, Add, OPEN, app2
	Menu, menu_secundario, Add, Dataload, app3
	Menu, menu_secundario, Add, Calculadora, app4
	
	Menu, menu_tercero, Add, Entrega Actual, arch1
	Menu, menu_tercero, Add, Entrega Herramientas, arch2
	Menu, menu_tercero, Add, Devolucion Propios, arch3
	Menu, menu_tercero, Add, Devolucion Bapiram, arch4
	Menu, menu_tercero, Add, Consolidado Devoluciones, arch5
	Menu, menu_tercero, Add, PDR Cambio de puntos en Areas, arch11
	Menu, menu_tercero, Add, Consumos 935, arch6
	Menu, menu_tercero, Add, Consumos 963, arch7
	Menu, menu_tercero, Add, Datos Tecnicos, arch8
	Menu, menu_tercero, Add, Almacenes ind. TM., arch9
	Menu, menu_tercero, Add, Almacenes ind. TT., arch10
	Menu, menu_tercero, Add, Plantilla R000-M043, arch12
	Menu, menu_tercero, Add, Plantilla Dif/Abastecimiento, arch13
	
	Menu, menu_cuarto, Add, Descargas, carp1
	Menu, menu_cuarto, Add, Temporales, carp2
	Menu, menu_cuarto, Add, I n p u t, carp3
	Menu, menu_cuarto, Add, Recepcion Dav, carp4
	Menu, menu_cuarto, Add, Devolucion Prop, carp5
	Menu, menu_cuarto, Add, Pistoleos, carp6
	Menu, menu_cuarto, Add, OneDrive, carp7
	
	Menu, menu_quinto, Add, Acosta, func5
	Menu, menu_quinto, Add, Militello, func6
	Menu, menu_quinto, Add, Mochegiani, func7
	Menu, menu_quinto, Add, Molina, func8
	Menu, menu_quinto, Add, Salgado, func9
	Menu, menu_quinto, Add, Tenuta, func10
	Menu, menu_quinto, Add, Zarate, func11
	Menu, menu_quinto, Add, SinSuper, func12
	
	Menu, menu_principal, Add, Almacenes, :menu_primario
	Menu, menu_principal, Add, Aplicaciones, :menu_secundario
	Menu, menu_principal, Add, Archivos, :menu_tercero
	Menu, menu_principal, Add, Carpetas, :menu_cuarto
	Menu, menu_primario, Add, Supervisores, :menu_quinto
	
	Menu, menu_principal, Icon, Temporales, icos\p.ico
	Menu, menu_principal, Icon, Almacenes, icos\p.ico
	Menu, menu_principal, Icon, Aplicaciones, icos\soft.ico
	Menu, menu_principal, Icon, Carpetas, icos\folder.ico
	Menu, menu_principal, Icon, Archivos, icos\arch.ico
	
	Menu, menu_primario, Icon, Alm_TM, icos\list.ico
	Menu, menu_primario, Icon, Alm_TT, icos\list.ico
	Menu, menu_primario, Icon, Redes, icos\list.ico
	Menu, menu_primario, Icon, Services, icos\list.ico
	Menu, menu_primario, Icon, Supervisores, icos\Filtro.ico
	
	Menu, menu_secundario, Icon, SAP, icos\prog1.ico
	Menu, menu_secundario, Icon, OPEN, icos\prog1.ico
	Menu, menu_secundario, Icon, Dataload, icos\prog1.ico
	Menu, menu_secundario, Icon, Calculadora, icos\calc.ico
	
	Menu, menu_tercero, Icon, Entrega Actual, icos\xls.ico
	Menu, menu_tercero, Icon, Entrega Herramientas, icos\xls.ico
	Menu, menu_tercero, Icon, Devolucion Propios, icos\xls.ico
	Menu, menu_tercero, Icon, Devolucion Bapiram, icos\xls.ico
	Menu, menu_tercero, Icon, Consolidado Devoluciones, icos\xls.ico
	Menu, menu_tercero, Icon, PDR Cambio de puntos en Areas, icos\xls.ico
	Menu, menu_tercero, Icon, Consumos 935, icos\xls.ico
	Menu, menu_tercero, Icon, Consumos 963, icos\xls.ico
	Menu, menu_tercero, Icon, Datos Tecnicos, icos\xls.ico
	Menu, menu_tercero, Icon, Almacenes ind. TM., icos\xls.ico
	Menu, menu_tercero, Icon, Almacenes ind. TT., icos\xls.ico
	Menu, menu_tercero, Icon, Plantilla R000-M043, icos\xls.ico
	Menu, menu_tercero, Icon, Plantilla Dif/Abastecimiento, icos\xls.ico
	
	Menu, menu_cuarto, Icon, Descargas, icos\folder.ico
	Menu, menu_cuarto, Icon, Temporales, icos\folder.ico
	Menu, menu_cuarto, Icon, I n p u t, icos\folder.ico
	Menu, menu_cuarto, Icon, Recepcion Dav, icos\folder.ico
	Menu, menu_cuarto, Icon, Devolucion Prop, icos\nube.ico
	Menu, menu_cuarto, Icon, Pistoleos, icos\nube.ico
	Menu, menu_cuarto, Icon, OneDrive, icos\nube.ico
	
	Menu, menu_quinto, Icon, Acosta, icos\caja.ico
	Menu, menu_quinto, Icon, Militello, icos\caja.ico
	Menu, menu_quinto, Icon, Mochegiani, icos\caja.ico
	Menu, menu_quinto, Icon, Molina, icos\caja.ico
	Menu, menu_quinto, Icon, Salgado, icos\caja.ico
	Menu, menu_quinto, Icon, Tenuta, icos\caja.ico
	Menu, menu_quinto, Icon, Zarate, icos\caja.ico
	Menu, menu_quinto, Icon, SinSuper, icos\caja.ico
	return	
}

;_________________________ Hotkeys __________________________

;F1 ===> Envia la palabra "NUEVO"
^F1::
ifWinActive, ahk_class SAP_FRONTEND_SESSION
{ ;*[Mis Teclas New]
	Sendinput, NUEVO
	Send, {Alt}+{Asc 39}
	Send, {ENTER}
}
else
{
	Msgbox, , Mis Teclas, Sap NO se encuentra activo.
}
return

;F2 ===> Envia la palabra "RECUPERADO"
^F2::
ifWinActive, ahk_class SAP_FRONTEND_SESSION
{
	Sendinput, RECUPERADO
	Send, {ENTER}
}
else
{
	Send, {AppsKey}
	Send, {i}
	Send, {i}
	Send, {ENTER}
}
return

;F3 ===> Movimiento de ventanas en pantallas
F3::
global pulsacion

WinGetTitle, vVentana, A
switch pulsacion
{
		Case 1:
		WinRestore, A
		WinMove, %vVentana%, ,0,0
		WinMaximize, A
		pulsacion := 2
		Case 2:
		WinRestore, A
		WinMove, %vVentana%, ,1280,0
		WinMaximize, A
		pulsacion := 3
		Case 3:
		;WinRestore, A
		WinMove, %vVentana%, ,2030,0,530,1024
		pulsacion := 4
		Case 4:
		;WinRestore, A
		WinMove, %vVentana%, ,0,0,530,995
		pulsacion := 1
		Default:
		pulsacion := 1
}
return

;F5 ===> Crea un nuevo excel vacio
F5::
	ex := ComObjCreate("Excel.Application")
	ex.visible := true
	ex.Workbooks.add
return
;F6

;F7 ===> Trasponer los datos y pegar
F7::
clip = %clipboard%
if clip contains %A_Tab%
{
	StringReplace,clipboard,clipboard,%A_Tab%, `r, All 
	SendPlay,^v
}
else if clip contains `r`n
{
	StringReplace,clipboard,clipboard,`r`n, %A_Tab%, All 
	SendPlay,^v
}
return

;F9 ===> Avanzar ventanas en sap
F9::
SplashTextOn, 125, 25, Aviso:AutoHotkey,MACRO ACTIVO
Send, {F6}
VentanaSap1 := false
while(VentanaSap1 = false) 
{
      ifWinActive Visualizar número serie material: Selección de números de serie ahk_class SAP_FRONTEND_SESSION
      {
      Send, {TAB}
      Sleep, 100
      Send, {TAB}
      Sleep, 100
      Send, {TAB}
      Sleep, 100
      Send, {TAB}
      Sleep, 100
      Send, {TAB}
      Sleep, 100
      Send, {ENTER}
      VentanaSap1 = true
      }
   }
   VentanaSap1 := false
   while(VentanaSap1 = false) 
   {
      ifWinActive Selección múltiple para Número de serie ahk_class #32770
      {
      Send, +{F11}
      VentanaSap1 = true
      }
}
SplashTextOff
return

;F10 ===> Retroceder ventanas en sap
F10::
	SplashTextOn, 125, 25, Aviso:AutoHotkey,MACRO ACTIVO
	Send, {F8}
	Sleep, 1500
	Send, {F8}
	Sleep, 1500
	Send, ^{a}
	Sleep, 1500
	Send, ^+{F11}
	Sleep, 2000
	Send, {NUMPADENTER}
	SplashTextOff
return

;F11 ===> Abrir y loguear en Open
F11::
   WinSet, AlwaysOnTop
   Progress, CT008000 CWFFFF00 fs10 b w40 X0 Y0 WS700 Pn0 W100, ON
   Progress, 25
   IfWinExist, OpenSmartflex v7.5.000.01_bpCV1437 - davgutierrez@oppro (Telecom Argentina S.A.) ahk_class WindowsForms10.Window.8.app.0.62e449
      {
		msgbox, El programa ya esta abierto.
		return
      }
   IfWinExist, OpenSmartflex ahk_class WindowsForms10.Window.8.app.0.2004eee
      { 
		Progress, 50
		WinClose, ahk_class WindowsForms10.Window.8.app.0.2004eee ahk_exe OpenSmartFlex.exe
      }
   IfWinNotExist, OpenSmartflex ahk_class WindowsForms10.Window.8.app.0.2004eee
	{
		Progress, 75
		Run, C:\Program Files (x86)\OpenSystems\OpenSmartFlex\OpenSmartFlex.lnk
	}
   VentanaOpen := false
   while(VentanaOpen = false)
   {
   ifWinActive, OpenSmartflex ahk_class WindowsForms10.Window.8.app.0.2004eee
      {
         Progress, 90
	    MouseMove, 326,36
	    Click, 2
         Send {DELETE}
         SendInput, % Usuario
         Send {TAB}
         SendInput, % PassOpen
         Send {ENTER}
         VentanaOpen := true
         Progress, 100
	 }
}
Progress, Off
return

;F12 ===> Abrir y loguear en Sap
F12::
WinSet, AlwaysOnTop
Progress, CT008000 CWFFFF00 fs10 b w40 X0 Y0 WS700 Pn0 W100, ON
Progress, 25
VentanaSap := false
IfWinExist, SAP ahk_class SAP_FRONTEND_SESSION
{
      msgbox, El programa ya esta abierto.
      return
      }
   IfWinExist, SAP Logon 770 ahk_class #32770
      {
      WinClose, ahk_class #32770 ahk_exe saplogon.exe
      }
   IfWinNotExist, SAP Logon 770 ahk_class #32770
      {
      Run, C:\Program Files (x86)\SAP\FrontEnd\SAPgui\saplogon
      Progress, 50
      }
   while(VentanaSap = false)
   {
   ifWinActive, SAP Logon 770 ahk_class #32770
      {
       Click, 288,274
       send {ENTER}
       VentanaSap :=true
       Progress, 75
      }
   }
   VentanaSap := false
   while(VentanaSap = false)
   {
   ifWinActive, SAP ahk_class SAP_FRONTEND_SESSION
      {
       Sendinput, % Usuario
       Send {TAB}
       Sendinput, % PassWin
       Send {ENTER}
       VentanaSap :=true
       Progress, 100
      }
}
Progress, Off
return

;_________________________ Navegacion __________________________

;PrintScreen
PrintScreen::
run, C:\Users\u607025\Documents\AHK-Studio\AHK-Studio.ahk
return

;ScrollLock ===> Graba el script y lo recarga
ScrollLock::
Send, ^{s}
Sleep, 1000
Reload
ExitApp
return

;Pause ===> Finaliza Mis Teclas.AHK
Pause::
ExitApp
return

;Insert ===> Pega solo valores
Insert::

return

;Home

;Page Up ===> Ventana GUI - Comentarios
PgUp::
Process, Exist, saplogon.exe
if !ErrorLevel
{
			Msgbox, , Mis Teclas, Sap NO se encuentra abierto.
		}
		else
		{
			Run, C:\Users\%Usuario%\Downloads\Temporales\AHK\Comentarios.ahk
}
return

;Page Down ===> Accion envia archivo cvrdi a descargas
PgDn::
   IfWinActive, input
   {
      SplashTextOn, 125, 25, Aviso:AutoHotkey,MACRO ACTIVO
      Send {F2}
      Sendinput, EquiposCvrdi
      Send {ENTER}
      Sleep, 2000
      if FileExist("\\delfos\OpenFiles\OPPRO\COM\input\EquiposCvrdi.TXT")
         {
            FileMove, \\delfos\OpenFiles\OPPRO\COM\input\EquiposCvrdi.TXT, C:\Users\%Usuario%\Downloads\Temporales\, 1
            SplashTextOff
            msgbox, El archivo se movio a temporales.
         }
   }
   else
	{
		MsgBox, La carpeta no esta abierta.
	}
return

;End ===> Ventana GUI - Imputaciones
End::
Process, Exist, saplogon.exe
if !ErrorLevel
{
		Msgbox, , Mis Teclas, Sap NO se encuentra abierto.
	}
	else
	{
		Run, C:\Users\%Usuario%\Downloads\Temporales\AHK\Imputaciones.ahk
}
return

;Del Suprimir

;_________________________ Multimedia __________________________

;Vol+ ===> Realiza scroll arriba
Volume_Up::
Send, {WheelUp}
return

;Vol- ===> Realiza scroll abajo
Volume_Down::
Send, {WheelDown}
return

;_________________________ Movimientos __________________________

;Flecha Up
;Flecha Down
;Flecha Right
;Flecha Left

;_________________________ Pad Numeros __________________________

;Control Numpad 1 ===> Guarda almacenamiento uno
^Numpad1::Copy(1)
return

;Control Numpad 4 ===> Pega el almacenamiento uno
^Numpad4::Paste(1)
return


;Control Numpad 2 ===> Guarda almacenamiento dos
^Numpad2::Copy(2)
return

;Control Numpad 5 ===> Pega el almacenamiento dos
^Numpad5::Paste(2)
return


;Control Numpad 3 ===> Guarda almacenamiento tres
^Numpad3::Copy(3)
return

;Control Numpad 6 ===> Pega el almacenamiento tres
^Numpad6::Paste(3)
return

;Control Numpad 7
;Control Numpad 8
;Control Numpad 9

;_________________________ Teclas M __________________________

;Control M1
;Control M2
;Control M3
;Control M4
;Control M5

;________________________ Combinaciones _________________________

;Control + Alt + O = si se intenta seguir abriendo Ahk
^!o::
MsgBox, , Mis Teclas, Script Mis teclas.AHK abierto y ejecutandose...
return

;Shift + Ctrl + C = Cortar
<+^C::
Send, ^{x}
return

^Del::
Send, {Shift}#+{S}
return

^n::
Send, {ñ}
return

;_________________________ Funciones ___________________________

Copy(clipboardID)
{ 
	global ; All variables are global by default
	local oldClipboard := ClipboardAll ; Save the (real) clipboard
	
	Clipboard = ; Erase the clipboard first, or else ClipWait does nothing
	Send ^c
	ClipWait, 2, 1 ; Wait 1s until the clipboard contains any kind of data
	if ErrorLevel 
	{
		Clipboard := oldClipboard ; Restore old (real) clipboard
		return
	}
	
	ClipboardData%clipboardID% := ClipboardAll
	
	Clipboard := oldClipboard ; Restore old (real) clipboard
}

Cut(clipboardID)
{
	global ; All variables are global by default
	local oldClipboard := ClipboardAll ; Save the (real) clipboard
	
	Clipboard = ; Erase the clipboard first, or else ClipWait does nothing
	Send ^x
	ClipWait, 2, 1 ; Wait 1s until the clipboard contains any kind of data
	if ErrorLevel 
	{
		Clipboard := oldClipboard ; Restore old (real) clipboard
		return
	}
	ClipboardData%clipboardID% := ClipboardAll
	
	Clipboard := oldClipboard ; Restore old (real) clipboard
}

Paste(clipboardID)
{
	global
	local oldClipboard := ClipboardAll ; Save the (real) clipboard
	
	Clipboard := ClipboardData%clipboardID%
	Send ^v
	
	Clipboard := oldClipboard ; Restore old (real) clipboard
	oldClipboard = 
}

;________________________Funciones de Menu________________________

^Enter::
Menu, menu_principal, Show
return

plus: 
return

temporales:
Sendinput, C:\Users\%Usuario%\Downloads\Temporales\
return

func1:
The_alm("TM")
return

func2:
The_alm("TT")
return

func3:
The_alm("RED")
return

func4:
The_alm("SERV")
return

func5:
The_alm("ACOSTA")
return

func6:
The_alm("MILITELLO")
return

func7:
The_alm("MOCHEGIANI")
return

func8:
The_alm("MOLINA")
return

func9:
The_alm("SALGADO")
return

func10:
The_alm("TENUTA")
return

func11:
The_alm("ZARATE")
return

func12:
The_alm("S-SUPER")
return

app1:
Run, C:\Program Files (x86)\SAP\FrontEnd\SAPgui\saplogon.exe
return

app2:
Run, C:\Program Files (x86)\OpenSystems\OpenSmartFlex\OpenSmartFlex.lnk
return

app3:
Run, C:\Users\%Usuario%\Documents\DataLoad\DataLoad.exe
return

app4:
Run, Calc.exe
return

arch1:
Run, G:\Gestión BASE\Movimientos\ENTREGA ACTUAL.xls
return

arch2:
Run, G:\Gestión BASE\Movimientos\ENTREGA ACTUAL HERRAMIENTAS (BETA).xlsm
return

arch3:
Run, C:\Users\%Usuario%\OneDrive - Telecom Argentina SA\Devoluciones Propios\Devolucion de Serializables.xlsm
return

arch4:
Run, C:\Users\%Usuario%\OneDrive - Telecom Argentina SA\Devoluciones Bapiram\Devolucion de Serializables.xlsm
return

arch5:
Run, C:\Users\%Usuario%\OneDrive - Telecom Argentina SA\Devoluciones Propios\CONSOLIDADO DE DEVOLUCIONES.xlsx
return

arch6:
Run, C:\Users\%Usuario%\OneDrive - Telecom Argentina SA\Deposito\935 - Consumos de Herramientas.xlsx
return

arch7:
Run, C:\Users\%Usuario%\OneDrive - Telecom Argentina SA\Deposito\963 - NO conozco codigo de tareas.xlsx
return

arch8:
Run, C:\Users\%Usuario%\OneDrive - Telecom Argentina SA\Deposito\DATOS - TECNICOS.xlsx
return

arch9:
Run, G:\Gestión BASE\Movimientos\Moviles Individuales\ALMACENES TM.xlsm
return

arch10:
Run, G:\Gestión BASE\Movimientos\Moviles Individuales\TT.xlsm
return

arch11:
Run, C:\Users\%Usuario%\Downloads\Adjuntos\ABM Cambio de puntos en Areas.xls
return

arch12:
Run, C:\Users\%Usuario%\OneDrive - Telecom Argentina SA\Deposito\Plantilla R000-M043.xlsx
return

arch13:
Run, C:\Users\%Usuario%\OneDrive - Telecom Argentina SA\Deposito\Planilla Diferencia en abastecimiento materiales.xlsx
return


carp1:
Run, C:\Users\%Usuario%\Downloads
return

carp2:
Run, C:\Users\%Usuario%\Downloads\Temporales
return

carp3:
Run, \\delfos\OpenFiles\OPPRO\COM\input
return

carp4:
Run, G:\Gestión BASE\Serializables\Recepción DAV
return

carp5:
Run, C:\Users\%Usuario%\OneDrive - Telecom Argentina SA\Devoluciones Propios
return

carp6:
Run, C:\Users\%Usuario%\OneDrive - Telecom Argentina SA\Pistoleos
return

carp7:
Run, C:\Users\%Usuario%\OneDrive - Telecom Argentina SA
return

The_alm(name)
{
	dir := "C:\Users\" . Usuario . "\Downloads\Temporales\AHK\Almacenes\ALM_" . name . ".txt"
	Clipboard := ""
	Clipboard := dir
	Sendinput, %Clipboard%
}
return


GuiClose:
ExitApp
return
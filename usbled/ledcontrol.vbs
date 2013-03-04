'====================================
'
'   LedControl for VPinball/Pinmame
'               by
'     Manofwar and Mr. silver
'
'              v0.2.4.6
'
' - first try to solve W flasher bug when using Switch on the same output where a flasher is working
' - fixed a bug caused by reseting LedWiz on and unadequate place (ON Color bug at start)
' - fixed bug on last output wich caused no rgb colors and intensity changing
' - vRGB IF check replaced with gOutsToSkip global
' - Minor optimization on For Next loops
' - Solved rgb stuttering problem
' - Removed pacdrive suport
' - Fixed ON Color bug
' - Added support for shaker intensity: Ex: S20 5000 I35 (Turn on the shaker for 5 seconds with and intensity of 35)
' - Added support for multiple timers and frequency repetition
' - Added support for multiple flashers colors
'
'====================================
' Constantes para la manipulación de bits 

' para el caption de los mensajes de error
Dim scriptName
scriptName="LedControl Initializer v0.2.4.5 - By Manofwar & Mr. Silver"

Private m_lOnBits(30)
Private m_l2Power(31)

m_lOnBits(0) = CLng(1)
m_lOnBits(1) = CLng(3)
m_lOnBits(2) = CLng(7)
m_lOnBits(3) = CLng(15)
m_lOnBits(4) = CLng(31)
m_lOnBits(5) = CLng(63)
m_lOnBits(6) = CLng(127)
m_lOnBits(7) = CLng(255)
m_lOnBits(8) = CLng(511)
m_lOnBits(9) = CLng(1023)
m_lOnBits(10) = CLng(2047)
m_lOnBits(11) = CLng(4095)
m_lOnBits(12) = CLng(8191)
m_lOnBits(13) = CLng(16383)
m_lOnBits(14) = CLng(32767)
m_lOnBits(15) = CLng(65535)
m_lOnBits(16) = CLng(131071)
m_lOnBits(17) = CLng(262143)
m_lOnBits(18) = CLng(524287)
m_lOnBits(19) = CLng(1048575)
m_lOnBits(20) = CLng(2097151)
m_lOnBits(21) = CLng(4194303)
m_lOnBits(22) = CLng(8388607)
m_lOnBits(23) = CLng(16777215)
m_lOnBits(24) = CLng(33554431)
m_lOnBits(25) = CLng(67108863)
m_lOnBits(26) = CLng(134217727)
m_lOnBits(27) = CLng(268435455)
m_lOnBits(28) = CLng(536870911)
m_lOnBits(29) = CLng(1073741823)
m_lOnBits(30) = CLng(2147483647)

m_l2Power(0) = CLng(1)
m_l2Power(1) = CLng(2)
m_l2Power(2) = CLng(4)
m_l2Power(3) = CLng(8)
m_l2Power(4) = CLng(16)
m_l2Power(5) = CLng(32)
m_l2Power(6) = CLng(64)
m_l2Power(7) = CLng(128)
m_l2Power(8) = CLng(256)
m_l2Power(9) = CLng(512)
m_l2Power(10) = CLng(1024)
m_l2Power(11) = CLng(2048)
m_l2Power(12) = CLng(4096)
m_l2Power(13) = CLng(8192)
m_l2Power(14) = CLng(16384)
m_l2Power(15) = CLng(32768)
m_l2Power(16) = CLng(65536)
m_l2Power(17) = CLng(131072)
m_l2Power(18) = CLng(262144)
m_l2Power(19) = CLng(524288)
m_l2Power(20) = CLng(1048576)
m_l2Power(21) = CLng(2097152)
m_l2Power(22) = CLng(4194304)
m_l2Power(23) = CLng(8388608)
m_l2Power(24) = CLng(16777216)
m_l2Power(25) = CLng(33554432)
m_l2Power(26) = CLng(67108864)
m_l2Power(27) = CLng(134217728)
m_l2Power(28) = CLng(268435456)
m_l2Power(29) = CLng(536870912)
m_l2Power(30) = CLng(1073741824)
m_l2Power(31) = &H80000000

Dim LedColors, myOuts(), BlinkState, Config, ContBlink, gTimerFreq, gOutsToSkip
' stores latest rgb intensities send to ledwiz
Dim lastIntensities, lastOutputStates
' stores current intensities in a array
Dim myIntensity(31)

lastOutputStates=0
' initialize rgb intensity array
For i=0 To UBound(myIntensity)
	myIntensity(i)=48
Next

' initialize lastintensities all to full 
lastIntensities =""
For i=0 To UBound(myIntensity)-1
	lastIntensities=lastIntensities & myIntensity(i) 
	lastIntensities =lastIntensities & ","
Next 
lastIntensities=lastIntensities & myIntensity(i) 

BlinkState = 0
gTimerFreq = 60 ' global frequency timer set to 60 ms (use 100ms if your cpu is not very fast)

On Error Resume Next

'Set LedControl = CreateObject("LEDWiz_Control.LED_Wiz")
Set LedControl = CreateObject("USBLed.Controller")
LedControl.Connect()

'If Err.number=0 then
'  If LedControl.Detected>0 then 
	ReadConfig "LedWiz"
'  End If 
'End If

' si no se pudo iniciar el controlador de leds, muestra mensaje de error al usuario
'If LedControl Is Nothing Then 
'	MsgBox "Error: Unable to initialize LedWizard or Pac-Drive, verify you've registered the led driver DLL's and the board is connected.",16,scriptName
'End If 

' Mr Silver start of new code ----------------------------------------------------------------------------------------- 

Class ledOutput
	Public m_Num		' número de item (corresponderá al numero que sigue al tipo en el INI)
	Public m_Type		' tipo de item ( O, S, L , W, B)
	Public vRGB			' si la salida es de RGB contiene el valor de la componente de color que controla
	Public m_Blink		' indica si la salida debe blinkear
	Public m_Timer		' tiempo que permanece activa la salida despues de su activación, si es 0 no se tiene en cuenta
	Public m_TimerCount ' acumulador de tiempo activo
	Public m_TimerOn	' indica si esta activo el temporizador
	Public bRGB			' indica si es una salida RGB
	Public outNum		' salida en led wizard
	Public m_FreqTime	' intervalo repeticiones para timers
	Public m_ShakerInt	' Intensidad del shaker
	Public m_Repeat		' repeticiones del timer
	Public m_RepeatCount	' contador de repeticiones
	
	Private outCtrl()	' array con las salidas que controla 
	' Añade una salida de control adicional 
	Public Sub AddItem(Num, oType)
		ReDim Preserve outCtrl(UBound(outCtrl)+1)
		Set outCtrl(UBound(outCtrl)) = New ledOutput
		outCtrl(UBound(outCtrl)-1).m_Num=Num
		outCtrl(UBound(outCtrl)-1).m_Type=oType
		outCtrl(UBound(outCtrl)-1).vRGB=-1
		outCtrl(UBound(outCtrl)-1).m_Blink=False
		MsgBox "Out add"
	End Sub
	Private Sub Class_Initialize()
		Redim outCtrl(0)
		Set outCtrl(0) = New ledOutput
		m_Timer=0
		m_TimerCount=0
		m_Blink=False
		m_TimerOn=False
		m_FreqTime=-1
		m_Repeat=0
		m_RepeatCount=0
		m_ShakerInt=0
		vRGB=-1
		bRGB=False 
		outNum=0
	End Sub
	Private Sub Class_Terminate()
		Dim x
		For x=0 to UBound(outCtrl)
			Set outCtrl(0) = Nothing
		Next
		Erase outCtrl
	End Sub	
	Public Sub SetOnTime(lTime)
		If (lTime>0) Then 
			m_Timer=lTime
		Else
			m_Timer=0			
		End If 
	End Sub
	Function TimerExpired(lTime)
		if (lTime>m_Timer) then 
			TimerExpired = true
		else
			TimerExpired = false
		end if 
	End Function
	Function IsTemporized()
		If (m_Timer > 0) then
			IsTemporized = true
		Else
			IsTemporized = false 
		End if 
	End Function 
	Function BlinkOnActivation()
		BlinkOnActivation = m_Blink
	End Function 	
	
	Public Sub SetItem(arItem)
		' solo hay un item 
		If (UBound(arItem)=0) Then 
			m_Type=arItem(0)(0)
			If (m_Type<>"O") And (m_Type<>"B") Then 
				m_Num=CLng(arItem(0)(1))
			End If			
		Else
			' hay más de un item, el primero lo guarda en los miembros
			m_Type=arItem(0)(0)
			m_Num=CLng(arItem(0)(1))
			For i=1 To UBound(arItem)
				AddItem arItem(i)(1) , arItem(i)(0)
			Next			
		End If 
	End Sub 	
	Function GetItem(Num)
		If (Num>=0) And (Num<UBound(outCtrl)) Then 
			Set GetItem = outCtrl(Num)
		Else		
			Set GetItem=Nothing
		End If 
	End Function
	
	Function GetItemCount()
		GetItemCount = UBound(outCtrl)-1
	End Function
	Function GetStates(Out)
		Dim state
		Dim OutsPD
		OutsPD=0
		gOutsToSkip=0
		' obtiene estado del item actual en la ROM
		state=0 				
      	Select Case m_Type 
      		  ' siempre apagada, no hace falta ponerlo 
      	      Case "0"
				  	GetStates=0
			  	Exit Function      	      		
      	      ' blinkeando
      	      Case "B"
      	      		'state=1
      	      	    state=BlinkState 
      	      	    If (BlinkState) Then 
      	      	    	OutsPD=OutsPD Or m_l2Power(OutNUm)
      	      	    End If 
		    'Exit For
      	      case "O" 
      	      	   state=1
      	      	   OutsPD=OutsPD or m_l2Power(OutNum)
      	      	   ' always ON, check is this is a colored output
			      	If (bRGB) Then 
			      		' activate next 2 outputs too
		  				OutsPD = OutsPD Or m_l2Power(OutNum+1) Or m_l2Power(OutNum+2)
		  				gOutsToSkip=2       		
			  		End If 
			  		GetStates=OutsPD
			  		Exit Function 
      	      case "L"	', "S"
      	      		state=controller.lamp(m_Num) 
	      	  	   if (state<>0) then 
		      	   		OutsPD=OutsPD or m_l2Power(OutNum)
				      	If (bRGB And OutsPD) Then 
				      		' possible optimization when timer is active
				      		' change color only when timer is not active (this means the color was changed previously)
				      		If (m_TimerOn=False) Then SetRGBColors outNum,myOuts(Out).vRGB,myOuts(Out+1).vRGB,myOuts(Out+2).vRGB
			  				OutsPD = OutsPD Or m_l2Power(OutNum+1) Or m_l2Power(OutNum+2) 
				  			gOutsToSkip=2
				      	End If
	      	  	   End If
			  Case "S"      
			  		state=controller.Solenoid(m_Num) 	      		
	      	  	    if (state<>0) then 
		      	   		OutsPD=OutsPD or m_l2Power(OutNum)
				      	If (bRGB And OutsPD) Then 
				      		' possible optimization when timer is active
				      		' change color only when timer is not active (this means the color was changed previously)
				      		If (m_TimerOn=False) Then SetRGBColors outNum,myOuts(Out).vRGB,myOuts(Out+1).vRGB,myOuts(Out+2).vRGB
			  				OutsPD = OutsPD Or m_l2Power(OutNum+1) Or m_l2Power(OutNum+2)   		
				  			gOutsToSkip=2
				      	End If
	      	  	   End If
      	      case "W" 
      	      	state=controller.Switch(m_Num) 
	   	    	If (BlinkOnActivation()) Then 
	    	    	  If ((state<>0) And BlinkState) Then OutsPD=OutsPD Or m_l2Power(OutNum)
	      	        Else
			 		  if (state<>0) then 
						OutsPD=OutsPD Or m_l2Power(OutNum)
				      		if (bRGB) then 
							SetRGBColors outNum,myOuts(Out).vRGB,myOuts(Out+1).vRGB,myOuts(Out+2).vRGB
			  				OutsPD = OutsPD Or m_l2Power(OutNum+1) Or m_l2Power(OutNum+2)   		
				  			gOutsToSkip=2

						end if 
					  End if 
				End if 
			  Case Else
			  	OutsPD=0
			  	GetStates=OutsPD
			  	Exit Function
      	End Select		    

       	' la salida está temporizada ?
      	If (IsTemporized()) Then 
			' si la salida se acaba de activar en la rom y el timer no esta corriendo
			If ((OutsPD<>0) and not m_TimerOn) then 	
		 		' activa la salida
	      			OutsPD=OutsPD Or m_l2Power(OutNum)
	      			' inicializa el timer
	      			m_TimerCount= 0
				' flag para marcar que el timer esta corriendo
				m_TimerOn=True			
				' is this a shaker ?
				If (m_ShakerInt>0) Then 
					' then set the intensity level
					SetOutputIntensity outNum,m_ShakerInt
				End If 
			' si el timer esta en marcha
			ElseIf m_TimerOn then
				' incrementa gTimerFreq ms
				m_TimerCount=m_TimerCount+gTimerFreq
				' Hay intervalo de frecuencia ?
				if (m_Repeat<>0) then 				
					if (m_repeatCount>=m_FreqTime) then 
						OutsPD=OutsPD Or m_l2Power(OutNum)	
						m_RepeatCount=0
					else
						OutsPD=0
						m_RepeatCount=m_RepeatCount+1
					end if 
				Else
					' la salida sigue activa
					OutsPD=OutsPD Or m_l2Power(OutNum)
				end if 
			End if 
	    	' ha expirado el timer ? 
	    	If (TimerExpired(m_TimerCount) and m_TimerOn) Then 	
		    ' apaga la salida
			   	OutsPD=0
	      		' resetea el contador de tiempo timer
	      		m_TimerCount = 0
				' apaga el timer
				m_TimerOn=false
				m_RepeatCount=0
	      	End if
      	End If 
      	GetStates=OutsPD
	End Function 
End Class

' Establece los valores rgb del color especificado en color a partir de la salida output
' el nombre del color en el ini se puede poner en mayusculas o minusculas ya que la función
' lo compara todo como si fueran mayusculas
' Solo funcional para LedWizard

Function SetLedWizColors( output, color ) 
	For ii=0 to UBound(LedColors)
		if UCase(LedColors(ii)(0))=UCase(color) then 
			' descomentar una vez aprobado el script 
			'LedControl.Command ="RGB:" & output & "," & LedColors(ii)(1)
			'LedControl.Command ="SBA:0,0,0,0,1"
			Dim arRGB
			arRGB= Split(LedColors(ii)(1),",",-1)
			SetLedWizColors = Array(CLng(arRGB(0)),CLng(arRGB(1)),CLng(arRGB(2)))
			SetRGBColors output-1,arRGB(0),arRGB(1),arRGB(2)
		Exit For
	End If
	Next
End Function
Public Sub SetRGBColors(output , R, G, B)
	If (output+2<=UBound(myIntensity)) Then
		myIntensity(output)=R
		myIntensity(output+1)=G
		myIntensity(output+2)=B
	End If 
End Sub 
Public Sub ResetLedWiz()
	'LedControl.Command ="PBA:48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48"
End Sub 
Public Sub SetOutputIntensity(output,intensity)
	If (output<=UBound(myIntensity)) Then
		myIntensity(output)=intensity
	End If
End Sub
' Retorna true si el color pasado esta en la lista de colores
Function IsValidColor(color)
	IsValidColor=False 
	For ii=0 to UBound(LedColors)
		if UCase(LedColors(ii)(0))=UCase(color) then 
			IsValidColor = True
			Exit For
		End If
	Next
End Function 

Function VerifyElementType(nType)
	Select Case nType 
			Case "O","S","L","W", "B"
			VerifyElementType=True
			Case Else 
			VerifyElementType=False
	End Select 	
End Function 

' Desplaza iShiftBits a la izquierda el valor lValue    
Private Function LShift(lValue, iShiftBits)
    If iShiftBits = 0 Then
        LShift = lValue
        Exit Function
    ElseIf iShiftBits = 31 Then
        If lValue And 1 Then
            LShift = &H80000000
        Else
            LShift = 0
        End If
        Exit Function
    ElseIf iShiftBits < 0 Or iShiftBits > 31 Then
        Err.Raise 6
    End If
    
    If (lValue And m_l2Power(31 - iShiftBits)) Then
        LShift = ((lValue And m_lOnBits(31 - (iShiftBits + 1))) * m_l2Power(iShiftBits)) Or &H80000000
    Else
        LShift = ((lValue And m_lOnBits(31 - iShiftBits)) * m_l2Power(iShiftBits))
    End If
End Function

' Desplaza iShiftBits a la derecha el valor lValue    
Private Function RShift(lValue, iShiftBits)
    If iShiftBits = 0 Then
        RShift = lValue
        Exit Function
    ElseIf iShiftBits = 31 Then
        If lValue And &H80000000 Then
            RShift = 1
        Else
            RShift = 0
        End If
        Exit Function
    ElseIf iShiftBits < 0 Or iShiftBits > 31 Then
        Err.Raise 6
    End If
    
    RShift = (lValue And &H7FFFFFFE) \ m_l2Power(iShiftBits)
    
    If (lValue And &H80000000) Then
        RShift = (RShift Or (&H40000000 \ m_l2Power(iShiftBits - 1)))
    End If
End Function

' End of Mr. Silver new code --------------------------------------------------------------------
' lee el archivo de configuración e inicializa las salidas

Sub ReadConfig (TypeControl)
  Dim ArrayTemp, ArrayColor, i, ii, idled,ArrayTemp2, size,wasRGB
  idled=0
  ' initialize global 
  gOutsToSkip=0
  
  If not IsObject(controller) then vpmTimer.addtimer 1000, "ReadConfig """ &  TypeControl & """ '": exit sub: End if
  If controller.gamename="" then vpmTimer.addtimer 1000, "ReadConfig """ &  TypeControl & """ '": exit sub: End if
  Set objfso = createobject("scripting.filesystemobject")
  Set FileConfig = objfso.opentextfile(".\LedControl.ini",1) 'abrimos el archivo
  
'  Set objfso= CreateObject("Scripting.FileSystemObject")
'  Set FileConfig = objfso.opentextfile("D:\Mis_Documentos\Mis archivos recibidos\LedControl.ini",1) 'abrimos el archivo

  ' reset ledwizard outputs to full brightness before start
  ResetLedWiz

  Do until Fileconfig.AtEndOfStream
     Config = Split(FileConfig.readline, ",", -1, 1)    'leemos líneas del archivo 
     If UBound(Config)<>-1 then 
	     If Instr(Config(0), TypeControl) then 
                       ReadColors TypeControl, FileConfig                     
         End If
		' controller.GameName
	     'If InStr("tom", Config(0))=1 then    'hasta que encontramos la rom que buscamos		
	     If InStr(controller.GameName, Config(0))=1 then    'hasta que encontramos la rom que buscamos
		
		Dim curOut 
			size=-1
			wasRGB=False
	       For i= 1 to Ubound(Config)
	       
		   idled=idled+1

		   Select Case UCase(Left(Config(i),1))

		      case "O","S","L","W", "B"		       
				Tokens=Split(UCase(Config(i)), ",", -1, 1) 
				ArrayTemp=Split(Tokens(0), "/", -1, 1)
				
				For items=0 To UBound(ArrayTemp)
					Set curOut = New ledOutput
					
					ArrayTemp2=Split(ArrayTemp(items), " ",-1,1)
					' auxiliar para guardar separador actual de tipo de elemento				
					Dim sep
					sep=Left(ArrayTemp2(0),1)	'Left(Config(i),1)
					For ii=0 to UBound(ArrayTemp2)
						If Not VerifyElementType(sep) Then 
							MsgBox "Invalid element type found on output:" & idled & " verify your ledcontrol.ini. Found element:" & sep,16,scriptName
							Exit Sub
						End If 					
						' guarda num de item
						ArrayTemp2(ii)=Split(ArrayTemp2(ii), sep, -1, 1)				
						' guarda tipo de item
						ArrayTemp2(ii)(0)=Left(sep,1) 
						' obtiene siguiente separador
						If (ii<UBound(ArrayTemp2)) Then  
							If Not IsValidColor(ArrayTemp2(ii+1)) Then 
								If (IsNumeric(ArrayTemp2(ii+1)) Or ArrayTemp2(ii+1)="BLINK") Then Exit For 
								sep=Left(ArrayTemp2(ii+1),1)
							Else					
								Exit For 
							End If 
						End If 
					Next
					If (ArrayTemp2(0)(0)="B" And UBound(ArrayTemp2)>0) Then
						MsgBox "Could not blink a color output, output number:" & idled,16,scriptName
						Exit Sub 
					End If 

					' si se ha especificado Color o timer
					If (UBound(ArrayTemp2)>0) Then 
						' envia los colores al LedWizard, retorna un array con los 3 valores RGB por componentes
						' si no hay ledwizard el valor será (0,0,0)
						If (ArrayTemp2(1)="BLINK") Then 
							ReDim Preserve myOuts(size+1)	
							curOut.m_Type=ArrayTemp2(0)(0)
							curOut.m_Num=CLng(ArrayTemp2(0)(1))
							curOut.m_Blink = True 
							curOut.outNum=idled-1
							Set myOuts(size+1)=curOut
							Set curOut = Nothing	
							size=UBound(myOuts)	
							wasRGB=False			
						ElseIf IsValidColor(ArrayTemp2(1)) then  
							ReDim Preserve myOuts(size+3)
							curOut.m_Blink = False
							' solo se requiere para las saildas siempre en ON
							' asi evitamos estar cambiando siempre el color
							Colors=SetLedWizColors(idled, ArrayTemp2(1))					
							' comprueba que no hay mas de item al que se le quiere asignar el color								
							Dim Num
							If IsNumeric(ArrayTemp2(0)(1)) Then 
								Num= CLng(ArrayTemp2(0)(1))
							Else
								Num=Empty
							End If 
							' guarda numero de item salida R	
							curOut.m_Num=Num 
							curOut.outNum=idled-1
							' guarda tipo de item
							curOut.m_Type=ArrayTemp2(0)(0)
							curOut.vRGB=Colors(0) ' Componente R
							curOut.bRGB=True 
							Set myOuts(UBound(myOuts)-2)=curOut
		
							Set curOut = New ledOutput
							'curOut.SetItem(ArrayTemp2)
							' guarda numero de item salida G
							curOut.m_Num=Num
							curOut.outNum=idled
							' guarda tipo de item
							curOut.m_Type=ArrayTemp2(0)(0)
							curOut.vRGB=Colors(1) ' Componente G
							Set myOuts(UBound(myOuts)-1)=curOut
							
							Set curOut = New ledOutput
							'curOut.SetItem(ArrayTemp2)
							' guarda numero de item salida B
							curOut.m_Num=Num
							curOut.outNum=idled+1
							' guarda tipo de item
							curOut.m_Type=ArrayTemp2(0)(0)
							curOut.vRGB=Colors(2) ' Componente B
							Set myOuts(UBound(myOuts))=curOut
							
							' suma dos salidas en uso ya que los colores son contiguos y ocuparan las salidas siguientes a idled
							'idled=idled+1
							Set curOut = Nothing
							size=UBound(myOuts)
							wasRGB=True
						' es un valor númerico ? (tiempo de permanencia activo)
						ElseIf IsNumeric(ArrayTemp2(1)) Then 
							'MsgBox ArrayTemp2(0)(0) & " " & ArrayTemp2(0)(1) & " " & ArrayTemp2(1) & " " & Arraytemp2(2)
							ReDim Preserve myOuts(size+1)	
							curOut.outNum=idled-1
							curOut.m_Type=ArrayTemp2(0)(0)
							curOut.m_Num=CLng(ArrayTemp2(0)(1))
							curOut.SetOnTime(CLng(ArrayTemp2(1)))
							if UBound(ArrayTemp2)>=2 then 
								' es un valor de frecuencia?
								if IsNumeric(ArrayTemp2(2)) then 
									curOut.m_FreqTime=(curOut.m_Timer \ CLng(ArrayTemp2(2)))/gTimerFreq
									curOut.m_Repeat=CLng(ArrayTemp2(2))
									'MsgBox curOut.m_FreqTime
								Else
									' es la intensidad del shaker ?
									If (Left(ArrayTemp2(2),1)="I") Then 
										If IsNumeric(Right(ArrayTemp2(2),Len(ArrayTemp2(2))-1)) Then 
											curOut.m_ShakerInt = CLng(Right(ArrayTemp2(2),Len(ArrayTemp2(2))-1))
											' Intensity range between 1 and 48
											If ((curOut.m_ShakerInt>48) Or (curOut.m_ShakerInt<1)) Then
												MsgBox "Invalid shaker intensity, range is (1 to 48): " & ArrayTemp2(2),16,scriptName
												Exit Sub 
											End If 											
										Else
											MsgBox "Invalid shaker intensity: " & ArrayTemp2(2),16,scriptName
											Exit Sub 										
										End If 										
									Else 
										MsgBox "Invalid frequency interval or shaker intensity: " & ArrayTemp2(2),16,scriptName
										Exit Sub 
									End If 
								End if 
							End if
							Set myOuts(size+1)=curOut
							Set curOut = Nothing
							size=UBound(myOuts)
							wasRGB=False
						Else
							' no se reconoce el color/comando en Tokens(1)
							MsgBox "Invalid parameter:" & ArrayTemp2(1) & " on ledcontrol.ini, output number:" & idled ,16,scriptName
							Exit Sub 	
						End If
				Else
					' set item outputs	
					ReDim Preserve myOuts(size+1)	
					curOut.m_Blink=False			
					curOut.SetItem(ArrayTemp2)
					curOut.outNum=idled-1
					Set myOuts(size+1)=curOut
					Set curOut = Nothing 
					size=UBound(myOuts)
					wasRGB=False
				end If				
				Next
		      case Else
		        Set curOut = New ledOutput
				ReDim Preserve myOuts(size+1)
				' establece los items para la salida actual		
				curOut.SetItem(Array(Array("0","0")))
				curOut.outNum=idled-1
				Set myOuts(size+1)=curOut	
				Set curOut = Nothing 
				size=UBound(myOuts)	
				wasRGB=False	
	           End Select
	         If (wasRGB) Then idled=idled+2
		Next
	        FileConfig.Close
		UpdateLedControl 
	        Exit sub    
	     End if
     End if
  Loop 
  Config=null
  FileConfig.Close
End Sub

' actualiza el estado de las luces según lo que indique la rom del vPinball
Sub UpdateLedControl()
  Dim out, OutsPD
  Dim intStr
  Dim state
  Dim numItems
  numItems=UBound(myOuts)
  
	' Actualiza Blinkstate (controla el parpadeo de los switches)
	If ContBlink=5 then 
		BlinkState= not BlinkState
		ContBlink=0
	Else
		ContBlink=ContBlink+1
	End if   
		
  OutsPD=0
  
  For out = 0 To numItems
  	Set curOut = myOuts(out)
  	state = curOut.GetStates(out)
	OutsPD = OutsPD Or state
  	' if the out is and rgb main out skip the next two outputs (component G and B outs)
	out=out+gOutsToSkip	
 	' if state was signaled for this ouput and the output changed
  	If (state) And (out+1<numItems) Then
  		' skip items on the same output number
  		' warning out+1 could cause a crash accesing
  		While (curOut.outNum=myOuts(out+1).outNum) 
  			out=out+1
  			If (out>=numItems) Then Exit For
  		Wend 
  	End If  	
  Next 
  
	' parse intensities arrays
	For i=0 To UBound(myIntensity)-1
		intStr=intStr & myIntensity(i) 
		intStr=intStr & ","
	Next 
	intStr=intStr & myIntensity(i) 
	
	' if the data to send has changed
	If (intStr<>lastIntensities) Then	
		' send to ledwiz
		'LedControl.Command = "PBA:" & intStr 
		' store last send intensities
		lastIntensities = intStr
	End If 
' did the outsputs changed?
If (OutsPD<>lastOutputStates) Then 
	' send the states to ledwiz
	'LedControl.Command ="SBA:" & (OutsPD and &hFF) & "," & (RShift(OutsPD,8) and &hff) & "," & (RShift(OutsPD,16) and &hff) & "," & (RShift(OutsPD,24) and &hff) & ",1"
	LedControl.Command (OutsPD)
	'MsgBox(OutsPD)
	' store latest send value
	lastOutputStates=OutsPD
End If 

  vpmTimer.addtimer gTimerFreq, "UpdateLedControl " & " ' "

End Sub

Sub ReadColors (TypeControl, FileConfig)
   Redim LedColors(0)
   LedColors(0)="0,0,0"
   Dim EndRead,i
   EndRead=True

   Do 
	LedColors(i) = Split(FileConfig.readline, "=", -1, 1)   
	if UBound(LedColors(i))>0 then 
		Redim Preserve LedColors(i+1)
		i=i+1
	else
		if UBound(LedColors(i))=0 then EndRead=False
	end if
   Loop While EndRead
End Sub

Set LedControl = CreateObject("USBLed.Controller")
LedControl.Connect ("COM3")
LedControl.Command (0)
i = 0
t = Timer
temp = Int(t)
StartMs = Int((t-temp) * 1000)
StartS = temp mod 60
while i < 20
LedControl.Command (255)
LedControl.Command (0)
i = i + 1
wend
LedControl.Command (0)
t = Timer
temp = Int(t)
EndeMs = Int((t-temp) * 1000)
EndeS = temp mod 60
DurationMs = EndeMs - StartMs
DurationS = (EndeS - StartS) * 1000
Duration = DurationS + DurationMs
WScript.Echo "running time complete: " & Duration & "ms. per call: " & Duration / 40 & "ms"
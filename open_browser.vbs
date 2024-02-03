Set WshShell = CreateObject("WScript.Shell")
WshShell.AppActivate "Command Prompt"
WshShell.SendKeys "o"
WScript.Sleep 100
WshShell.SendKeys "{ENTER}"

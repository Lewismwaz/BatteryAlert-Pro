'========================
' BatteryWatcherLauncher.vbs
'========================

Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "powershell -WindowStyle Hidden -ExecutionPolicy Bypass -File ""C:\Sounds\BatteryWatcher.ps1""", 0

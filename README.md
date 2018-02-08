# Powershell upload file sample
in [MobSF](https://github.com/MobSF/Mobile-Security-Framework-MobSF) has upload(scan,delete_scan) file api. on the windows platform we use powershell to call it.                                                                
first, running MOBSF,then run this script.

## Pwershell's some tricks

when first running powershell no permission error,do this cmd:
``` shell
set-ExecutionPolicy RemoteSigned   
```
list all powershell's permissions
``` shell
[System.Enum]::GetNames([Microsoft.PowerShell.ExecutionPolicy])
```
user execute                                                                                                                                               
win cmd invoke powershell's script file,  %* mean pass argments
``` shell
PowerShell -NoProfile -ExecutionPolicy Bypass -File ".\echo.ps1" %*
```

administrator  execute
``` shell
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""C:\Users\SE\Desktop\ps.ps1""' -Verb RunAs}"
```
powershell get argments
```
$args[0]  ...
```
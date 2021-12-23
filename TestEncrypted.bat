@echo off

FOR %%i IN (*zip) DO (
    echo garbage | "c:\Program Files\7-Zip\7z.exe" t -y %%~fi >nul 2>nul
if errorlevel 2 (
   echo File is encrypted
   echo %%~i >> encryptedlist.txt
)
)

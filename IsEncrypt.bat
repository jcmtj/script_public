@echo off

echo garbage | "c:\Program Files\7-Zip\7z.exe" t -y %1 >nul 2>nul

if errorlevel 2 (
   echo File is encrypted
   echo %1 >> encryptedlist.txt
   exit /b %errorlevel%
)

if errorlevel 0 (
   echo File is NOT encrypted
   echo %1 >> NOTencryptedlist.txt
   exit /b %errorlevel%
)

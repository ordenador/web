@ECHO off
set COMENTARIO=0
SET /P COMENTARIO=Comentario: 
if COMENTARIO==0 (COMENTARIO="Commit automatico (pushwindows.bat): %fvar%")
for /f "delims=" %%a in ('date/t') do @set mydate=%%a 
for /f "delims=" %%a in ('time/t') do @set mytime=%%a 
set fvar=%mydate%%mytime% 

"%ProgramFiles(x86)%\Git\bin\git" add .
"%ProgramFiles(x86)%\Git\bin\git" commit -a -m "%COMENTARIO%" 
REM "%ProgramFiles(x86)%\Git\bin\git" push heroku master
REM "%ProgramFiles(x86)%\Git\bin\git" push git@github.com:ordenador/web.git


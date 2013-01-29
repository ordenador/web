@ECHO OFF

for /f "delims=" %%a in ('date/t') do @set mydate=%%a 
for /f "delims=" %%a in ('time/t') do @set mytime=%%a 
set fvar=%mydate%%mytime% 

"%ProgramFiles(x86)%\Git\bin\git" add .
"%ProgramFiles(x86)%\Git\bin\git" commit -a -m "Commit automatico (pushwindows.bat): %fvar%" 
"%ProgramFiles(x86)%\Git\bin\git" push




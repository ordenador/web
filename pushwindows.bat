@ECHO OFF

REM get date and time 
for /f "delims=" %%a in ('date/t') do @set mydate=%%a 
for /f "delims=" %%a in ('time/t') do @set mytime=%%a 
set fvar=%mydate%%mytime% 

REM add all new files 
git add . 
git commit -a -m "Commit automatico (pushwindows.bat): %fvar%" 

git push
REM git push heroku master
REM git push git@github.com:ordenador/web.git



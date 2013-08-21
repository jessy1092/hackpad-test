@ECHO on 

cd /d E:\Dropbox\hackpad

REM get date and time 
for /f "delims=" %%a in ('date/t') do @set mydate=%%a 
for /f "delims=" %%a in ('time/t') do @set mytime=%%a 
set var=%mydate%%mytime% 

REM add all new files 
call git add . 
call git commit -a -m "Automated commit by autoSyncHackpad on %var%" 
call git push
pause
exit
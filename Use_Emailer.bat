@ECHO OFF

Set emailerRootPath=%CD%
Set emailerTimeStamp=%date% %time%

REM ***** CHANGE THIS TO FOLDER WHERE emailer.exe is *****
CD /D "C:\Stuff\Emailer"



> Emailer_subject.txt ECHO #%1 is offline 

> Emailer_body.txt ECHO %1 is offline
>>Emailer_body.txt ECHO Emailing IFTTT to power off and power on
>>Emailer_body.txt ECHO %emailerTimeStamp%

Emailer.exe trigger@applet.ifttt.com
REM ***** CHANGE THIS TO THE RECIPIENT EMAIL ADDRESS *****
Emailer.exe therobertzone@gmail.com

>> "%emailerRootPath%\Emailer_Log_%1.txt" ECHO[
>> "%emailerRootPath%\Emailer_Log_%1.txt" ECHO %date% %time%
>> "%emailerRootPath%\Emailer_Log_%1.txt" ECHO OFFLINE

CD /D "%emailerRootPath%"

Set emailerRootPath=
Set emailerTimeStamp=



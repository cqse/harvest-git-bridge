@echo off
echo %0
echo %1
call env.bat
call gradle uploadTrace
IF NOT "%0" == "upload-trace.bat" ( pause )
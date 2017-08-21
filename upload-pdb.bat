@echo off
echo %0
echo %1
call env.bat
call gradle uploadPdb
IF NOT "%0" == "upload-pdb.bat" ( pause )
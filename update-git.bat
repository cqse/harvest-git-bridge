@echo off
echo %0
echo %1
call env.bat
call gradlew.bat updateGit
IF NOT "%0" == "update-git.bat" ( pause )
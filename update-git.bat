@echo off
cd /d "%~dp0"
echo %0
echo %1
call env.bat
call gradlew.bat updateGit

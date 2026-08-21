@echo off
setlocal
cd /d "%~dp0"

echo ================================================================
echo  Starting Anushka Dhumal Portfolio Backend (Spring Boot 3.3)
echo ================================================================

REM Check if portable Maven is in .maven directory
if exist ".maven\apache-maven-3.9.6\bin\mvn.cmd" (
    set "MVN_CMD=%~dp0.maven\apache-maven-3.9.6\bin\mvn.cmd"
) else (
    set "MVN_CMD=mvn"
)

call "%MVN_CMD%" spring-boot:run
pause

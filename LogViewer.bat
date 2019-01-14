@echo off
setlocal enabledelayedexpansion

:loop
    echo.
    echo ----------------------------------------------------------
    echo 键入任何字符，以查看程序执行状态...
    echo %~f1
    pause>nul
    type "%~f1"
goto loop
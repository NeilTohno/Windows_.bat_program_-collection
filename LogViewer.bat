@echo off
setlocal enabledelayedexpansion

:loop
    echo.
    echo ----------------------------------------------------------
    echo �����κ��ַ����Բ鿴����ִ��״̬...
    echo %~f1
    pause>nul
    type "%~f1"
goto loop
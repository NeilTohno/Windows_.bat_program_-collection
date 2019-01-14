@echo off 
color 2F
echo ━━━━━━━━
echo    刷新DNS緩存
echo ━━━━━━━━
echo=
echo=

rem 操作開始

ipconfig /flushdns

echo=
echo=
echo ━━━━━━
echo   操 作 成 功
echo ━━━━━━

timeout /t 3 /nobreak

echo. 

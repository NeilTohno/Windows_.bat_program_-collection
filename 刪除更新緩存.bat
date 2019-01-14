@ECHO OFF 
color 2F
echo ━━━━━━━━━
echo 刪除更新緩存緩存
echo ━━━━━━━━━
echo=
echo=
echo. & pause

rem 操作開始

net stop wuauserv
net stop bits
net stop cryptsvc
rmdir /q /s "%windir%\SoftwareDistribution\Download\"

timeout /t 30 /nobreak

rem 恢復服務

net stop wuauserv
net start bits
net start cryptsvc

timeout /t 10 /nobreak

"%windir%\system32\wuapp.exe" startmenu

echo=
echo=
echo ━━━━━━━━━━━━━━
echo 操作成功，请再次检查更新
echo ━━━━━━━━━━━━━━

echo. & pause
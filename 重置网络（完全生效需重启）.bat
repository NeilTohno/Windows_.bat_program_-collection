@echo off 
color 2F
echo ━━━━━━━━━━━
echo   重 置 网 络 连 接
echo ━━━━━━━━━━━
echo=
echo=

echo. & pause

echo= 操作開始
echo 1
ipconfig /flushdns
echo=
timeout /t 1 /nobreak
echo 2
netsh int ip reset
echo=
timeout /t 1 /nobreak
echo 3
netsh int httpstunnel reset
echo=
timeout /t 1 /nobreak
echo 4
netsh winhttp reset proxy
echo=
timeout /t 1 /nobreak
echo 5
netsh int portproxy reset
echo=
timeout /t 1 /nobreak
echo 6
netsh int tcp reset
echo=
timeout /t 1 /nobreak
echo 7
netsh winsock reset


echo=
echo=
echo ━━━━━━━━━━━━━━
echo -----注意-----
echo 程序执行完毕，請重啟计算机！
echo=
echo ━━━━━━━━━━━━━━

echo. & pause

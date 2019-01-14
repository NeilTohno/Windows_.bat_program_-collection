@echo off 
color 2F
echo ━━━━━━━
echo 1.常規IP地址
echo ━━━━━━━
echo=
echo=

netsh interface ip show config

echo ━━━━━━━━━━━━━━━
echo 繼續會顯示更多內容，要繼續么
echo ━━━━━━━━━━━━━━━
echo=
echo=

echo. & pause

cls

echo ━━━━━━━━
echo 2.查看IP地址等
echo ━━━━━━━━
echo=
echo=

ipconfig /all

echo. & pause



@echo off 
color 2F
echo ━━━━━━━━━━━━━━
echo 快速恢复chrome的缓存
echo ━━━━━━━━━━━━━━
echo=

MKDIR "Y:\cache" 

rmdir /s /q "C:\Users\Administrator\AppData\Local\Google\Chrome\User Data\Default\cache"
Mklink /d "C:\Users\Administrator\AppData\Local\Google\Chrome\User Data\Default\cache" "Y:\cache"

::"c:/program files/winrar/winrar.exe" x "D:\drs\Chrome\cache_bak.rar"  Y:\
explorer "C:\Users\Administrator\AppData\Local\Google\Chrome\User Data\Default\cache"

timeout /t 3 /nobreak

echo=
echo ━━━━━━━━━━━━━━
echo 打开chrome
echo ━━━━━━━━━━━━━━
echo=

"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --disk-cache-size=851443712


echo ━━━━━
echo 操作成功。
echo ━━━━━ 

timeout /t 1 /nobreak
echo.
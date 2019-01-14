@ECHO OFF & CD/D "%~dp0"
color 2F
rem set log=".\log\MMCSS_op.log"

echo Multimedia Class Scheduler Service 优化脚本
echo=
echo=
echo ━━━━━━━━━━━━━━                                                       
echo         警  告                                                                     
echo 此优化项目 是 实验性的
echo=
echo 适用于 win7 及以上系统
echo=
echo 如遇问题，立即还原注册表
echo=
echo     或  还原系统
echo ━━━━━━━━━━━━━━                                                       
                                                                                  
echo Step 1 创建系统还原点
echo=
echo 正在打开Windows系统保护,请创建系统还原点；关闭它然后回到这里
echo=
timeout /t 5 /nobreak
echo=
"%windir%\System32\SystemPropertiesProtection.exe"
echo. & pause

echo=
echo Step 2 开始注册表备份
echo=
mkdir ".\bak\"
echo=                                                                   
reg export "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia" "%cd%\bak\MMCSS_or.reg" 
echo= 
echo Step 3 开始导入注册表
echo=
"%windir%\regedit.exe" "%cd%\MMCSS_op.reg"
                              
echo 优化成功，重启系统后生效

echo. & pause
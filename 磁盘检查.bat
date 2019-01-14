@echo off
color 2F
echo 磁盘检测修复
echo=
echo=

setlocal enabledelayedexpansion

set /p vol=请键入要检查的盘符(默认C盘),例如F盘，键入F即可:

mkdir ".\Log\"
set log=".\Log\!vol!盘检查结果.log"

echo.>!log!
echo=>>!log!
echo 操作开始，现在的时间点为 %date:/=-%%time:~0,-3%>!log!
echo=>>!log!
echo.
echo.
echo 正在检查磁盘,请不要关闭本程序
echo 你可以在这里查看结果文件: !log!.

start "LogViewer" LogViewer.bat !log!

chkdsk !vol!: /f /v /x>>!log!
echo=>>!log!
echo 操作成功！现在的时间点为 %date:/=-%%time:~0,-3%>>!log!

echo.
echo.
echo 结果文件: !log!.

pause
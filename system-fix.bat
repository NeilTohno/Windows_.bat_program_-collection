@echo off 
color 2F
echo 系统文件修复批处理程序 v1，适用于Windows 7，Windows 8,Windows 8.1,Windows 10
echo=
echo=
echo 本程序使用Windows自带 sfc.exe 修复系统，请自行百度一下
echo=
echo=
echo 01. 扫描并修复系统文件
echo 请注意操作未完成不要关闭本程序
echo. & pause 
echo=
echo=
echo sfc /scannow

sfc /scannow

echo=
echo=
echo 02. 操作完成，下面将确定哪些系统文件可能无法用sfc 修复

findstr /C:"[SR]" %windir%\Logs\CBS\CBS.log >"%userprofile%\Desktop\sfcdetails.txt"

echo 操作完成，现在请检查桌面上的 sfcdetails.txt 文件
echo 若发现有无法修复的文件
echo 请打开网页 https://support.microsoft.com/zh-cn/kb/929833

echo=
echo=
echo 程序执行完毕，输入任意字符退出
echo. & pause 

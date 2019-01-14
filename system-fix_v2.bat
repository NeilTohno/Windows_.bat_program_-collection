@echo off 
color 2F
echo 系统文件修复批处理程序 v2, 适用于Windows 8,Windows 8.1,Windows 10
echo=
echo 请先查阅 https://support.microsoft.com/zh-cn/kb/947821
echo 对于Windows 7 SP1，也可以查看该网页
echo=
echo=
echo 【必须在联网状态下才能使用，否则系统文件修复会失败】
echo ---注意操作未完成不要关闭本程序---
echo. & pause 
echo=
echo=
echo 【01. 检查当前的映像版本】
echo Dism /online /Get-CurrentEdition

Dism /online /Get-CurrentEdition

echo=
echo=
echo 【02. 检查映像是否可修复】
echo Dism /Online /Cleanup-Image /ScanHealth

Dism /Online /Cleanup-Image /ScanHealth

echo=
echo=
echo 现在打开结果文件 Checksur.log，请检查并关闭文件
echo 若不关闭文件，操作将无法继续
echo 若要手动查看文件： "%windir%\logs\CBS\Checksur.log"

"%windir%\logs\CBS\Checksur.log"

echo=
echo=
echo 【03.1 如果检查显示映像文件有问题，请进行下一步】
echo 否则请直接关闭本程序
echo. & pause 

echo=
echo=
echo 【03.2 检查映像文件损坏的程度】
echo Dism /Online /Cleanup-Image /CheckHealth

Dism /Online /Cleanup-Image /CheckHealth

echo=
echo=
echo 【03.3 如果映像文件可以修复，请进行下一步】
echo 否则请直接关闭本程序
echo. & pause 
echo=
echo=
echo 【04. 现在修复中，请稍后】
echo DISM /Online /Cleanup-image /RestoreHealth

DISM /Online /Cleanup-image /RestoreHealth

echo=
echo=
echo ---程序执行完毕---
echo 若有无法修复的严重问题，请注意：
echo 使用win7系统，请通过系统安装盘选项中“系统升级”修复系统，或者直接重装win7
echo 使用win8,win10 系统，请使用”恢复出厂设置“方法，或者直接重装
echo=
echo 其他问题
echo 请打开网页 https://msdn.microsoft.com/zh-cn/library/hh824869.aspx

echo=
echo 输入任意字符退出
echo. & pause 
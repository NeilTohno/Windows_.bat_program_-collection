rem .bat 批处理
rem 整理磁盘碎片并自动关机.bat
@echo off 
color 2F
rem 提示1
echo ━━━━━━━━━━━━━━━━━━━━━━━━
echo 整理所有磁盘上的文件碎片并自动关机
echo  （本程序适用于 Windos 7及 Windos 7以上的系统）
echo ━━━━━━━━━━━━━━━━━━━━━━━━
echo=
echo 首先将分析磁盘是否需要碎片整理
echo 若系统提示不需要执行碎片整理的话，请直接关闭本程序
echo. & pause 
echo=
echo=
rem 分析开始
Defrag /C /A
rem 提示2
echo=
echo=
echo ━━━━━
echo 继续吗？
echo ━━━━━
echo. & pause
rem 提示3
echo=
echo=
echo ━━━━━━━━━━━━━━━━━━━━━━━━━
echo -----请注意-----
echo 磁盘碎片整理可能耗费几分钟或几小时
echo  （文件碎片的越多，操作耗费的时间越多）
echo=
echo 执行磁盘碎片整理，将会占用大量的系统资源
echo 建议在长时间离开计算机的情况下，或者睡觉前使用
echo= 
echo 整理的结果将保存到桌面上，文件为 Defrag.log
echo 操作完成会自动关机
echo= 
echo 请先关闭其他所有正在运行的程序
echo 按下任意键执行磁盘碎片整理
echo ━━━━━━━━━━━━━━━━━━━━━━━━━
echo. & pause 
rem 操作开始
echo 操作开始，现在的时间点为 %date:/=-%%time:~0,-3% >"%userprofile%\desktop\Defrag.log"
echo ------------------------------------------------>>"%userprofile%\desktop\Defrag.log"
echo= >>"%userprofile%\desktop\Defrag.log"
echo= >>"%userprofile%\desktop\Defrag.log"

Defrag /c /u /v /h /x >>"%userprofile%\desktop\Defrag.log"
rem 提示4
echo=
echo=
echo ━━━━━━━━━━━━━━
echo -----注意-----
echo 程序执行完毕，计算机即将关机！
echo=
echo ━━━━━━━━━━━━━━
echo= >>"%userprofile%\desktop\Defrag.log"
echo= >>"%userprofile%\desktop\Defrag.log"
echo ------------------------------------------------>>"%userprofile%\desktop\Defrag.log"
echo 操作成功，现在的时间点为 %date:/=-%%time:~0,-3% >>"%userprofile%\desktop\Defrag.log"
rem 关机命令

shutdown /s
rem 结果文件位置
rem "%userprofile%\desktop\Defrag.log"

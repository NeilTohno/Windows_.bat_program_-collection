@echo off
color 2F
echo ���̼���޸�
echo=
echo=

setlocal enabledelayedexpansion

set /p vol=�����Ҫ�����̷�(Ĭ��C��),����F�̣�����F����:

mkdir ".\Log\"
set log=".\Log\!vol!�̼����.log"

echo.>!log!
echo=>>!log!
echo ������ʼ�����ڵ�ʱ���Ϊ %date:/=-%%time:~0,-3%>!log!
echo=>>!log!
echo.
echo.
echo ���ڼ�����,�벻Ҫ�رձ�����
echo �����������鿴����ļ�: !log!.

start "LogViewer" LogViewer.bat !log!

chkdsk !vol!: /f /v /x>>!log!
echo=>>!log!
echo �����ɹ������ڵ�ʱ���Ϊ %date:/=-%%time:~0,-3%>>!log!

echo.
echo.
echo ����ļ�: !log!.

pause
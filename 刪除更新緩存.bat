@ECHO OFF 
color 2F
echo ������������������
echo �h�����¾��澏��
echo ������������������
echo=
echo=
echo. & pause

rem �����_ʼ

net stop wuauserv
net stop bits
net stop cryptsvc
rmdir /q /s "%windir%\SoftwareDistribution\Download\"

timeout /t 30 /nobreak

rem �֏ͷ���

net stop wuauserv
net start bits
net start cryptsvc

timeout /t 10 /nobreak

"%windir%\system32\wuapp.exe" startmenu

echo=
echo=
echo ����������������������������
echo �����ɹ������ٴμ�����
echo ����������������������������

echo. & pause
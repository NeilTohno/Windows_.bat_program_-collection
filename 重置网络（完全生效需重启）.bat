@echo off 
color 2F
echo ����������������������
echo   �� �� �� �� �� ��
echo ����������������������
echo=
echo=

echo. & pause

echo= �����_ʼ
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
echo ����������������������������
echo -----ע��-----
echo ����ִ����ϣ�Ո�؆��������
echo=
echo ����������������������������

echo. & pause

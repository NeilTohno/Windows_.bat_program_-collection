@ECHO OFF & CD/D "%~dp0"
color 2F
rem set log=".\log\MMCSS_op.log"

echo Multimedia Class Scheduler Service �Ż��ű�
echo=
echo=
echo ����������������������������                                                       
echo         ��  ��                                                                     
echo ���Ż���Ŀ �� ʵ���Ե�
echo=
echo ������ win7 ������ϵͳ
echo=
echo �������⣬������ԭע���
echo=
echo     ��  ��ԭϵͳ
echo ����������������������������                                                       
                                                                                  
echo Step 1 ����ϵͳ��ԭ��
echo=
echo ���ڴ�Windowsϵͳ����,�봴��ϵͳ��ԭ�㣻�ر���Ȼ��ص�����
echo=
timeout /t 5 /nobreak
echo=
"%windir%\System32\SystemPropertiesProtection.exe"
echo. & pause

echo=
echo Step 2 ��ʼע�����
echo=
mkdir ".\bak\"
echo=                                                                   
reg export "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia" "%cd%\bak\MMCSS_or.reg" 
echo= 
echo Step 3 ��ʼ����ע���
echo=
"%windir%\regedit.exe" "%cd%\MMCSS_op.reg"
                              
echo �Ż��ɹ�������ϵͳ����Ч

echo. & pause
@echo off 
color 2F
echo ϵͳ�ļ��޸���������� v1��������Windows 7��Windows 8,Windows 8.1,Windows 10
echo=
echo=
echo ������ʹ��Windows�Դ� sfc.exe �޸�ϵͳ�������аٶ�һ��
echo=
echo=
echo 01. ɨ�貢�޸�ϵͳ�ļ�
echo ��ע�����δ��ɲ�Ҫ�رձ�����
echo. & pause 
echo=
echo=
echo sfc /scannow

sfc /scannow

echo=
echo=
echo 02. ������ɣ����潫ȷ����Щϵͳ�ļ������޷���sfc �޸�

findstr /C:"[SR]" %windir%\Logs\CBS\CBS.log >"%userprofile%\Desktop\sfcdetails.txt"

echo ������ɣ��������������ϵ� sfcdetails.txt �ļ�
echo ���������޷��޸����ļ�
echo �����ҳ https://support.microsoft.com/zh-cn/kb/929833

echo=
echo=
echo ����ִ����ϣ����������ַ��˳�
echo. & pause 

@echo off 
color 2F
echo ϵͳ�ļ��޸���������� v2, ������Windows 8,Windows 8.1,Windows 10
echo=
echo ���Ȳ��� https://support.microsoft.com/zh-cn/kb/947821
echo ����Windows 7 SP1��Ҳ���Բ鿴����ҳ
echo=
echo=
echo ������������״̬�²���ʹ�ã�����ϵͳ�ļ��޸���ʧ�ܡ�
echo ---ע�����δ��ɲ�Ҫ�رձ�����---
echo. & pause 
echo=
echo=
echo ��01. ��鵱ǰ��ӳ��汾��
echo Dism /online /Get-CurrentEdition

Dism /online /Get-CurrentEdition

echo=
echo=
echo ��02. ���ӳ���Ƿ���޸���
echo Dism /Online /Cleanup-Image /ScanHealth

Dism /Online /Cleanup-Image /ScanHealth

echo=
echo=
echo ���ڴ򿪽���ļ� Checksur.log�����鲢�ر��ļ�
echo �����ر��ļ����������޷�����
echo ��Ҫ�ֶ��鿴�ļ��� "%windir%\logs\CBS\Checksur.log"

"%windir%\logs\CBS\Checksur.log"

echo=
echo=
echo ��03.1 ��������ʾӳ���ļ������⣬�������һ����
echo ������ֱ�ӹرձ�����
echo. & pause 

echo=
echo=
echo ��03.2 ���ӳ���ļ��𻵵ĳ̶ȡ�
echo Dism /Online /Cleanup-Image /CheckHealth

Dism /Online /Cleanup-Image /CheckHealth

echo=
echo=
echo ��03.3 ���ӳ���ļ������޸����������һ����
echo ������ֱ�ӹرձ�����
echo. & pause 
echo=
echo=
echo ��04. �����޸��У����Ժ�
echo DISM /Online /Cleanup-image /RestoreHealth

DISM /Online /Cleanup-image /RestoreHealth

echo=
echo=
echo ---����ִ�����---
echo �����޷��޸����������⣬��ע�⣺
echo ʹ��win7ϵͳ����ͨ��ϵͳ��װ��ѡ���С�ϵͳ�������޸�ϵͳ������ֱ����װwin7
echo ʹ��win8,win10 ϵͳ����ʹ�á��ָ��������á�����������ֱ����װ
echo=
echo ��������
echo �����ҳ https://msdn.microsoft.com/zh-cn/library/hh824869.aspx

echo=
echo ���������ַ��˳�
echo. & pause 
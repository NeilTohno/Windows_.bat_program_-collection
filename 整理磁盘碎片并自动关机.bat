rem .bat ������
rem ���������Ƭ���Զ��ػ�.bat
@echo off 
color 2F
rem ��ʾ1
echo ������������������������������������������������
echo �������д����ϵ��ļ���Ƭ���Զ��ػ�
echo  �������������� Windos 7�� Windos 7���ϵ�ϵͳ��
echo ������������������������������������������������
echo=
echo ���Ƚ����������Ƿ���Ҫ��Ƭ����
echo ��ϵͳ��ʾ����Ҫִ����Ƭ����Ļ�����ֱ�ӹرձ�����
echo. & pause 
echo=
echo=
rem ������ʼ
Defrag /C /A
rem ��ʾ2
echo=
echo=
echo ����������
echo ������
echo ����������
echo. & pause
rem ��ʾ3
echo=
echo=
echo ��������������������������������������������������
echo -----��ע��-----
echo ������Ƭ������ܺķѼ����ӻ�Сʱ
echo  ���ļ���Ƭ��Խ�࣬�����ķѵ�ʱ��Խ�ࣩ
echo=
echo ִ�д�����Ƭ��������ռ�ô�����ϵͳ��Դ
echo �����ڳ�ʱ���뿪�����������£�����˯��ǰʹ��
echo= 
echo ����Ľ�������浽�����ϣ��ļ�Ϊ Defrag.log
echo ������ɻ��Զ��ػ�
echo= 
echo ���ȹر����������������еĳ���
echo ���������ִ�д�����Ƭ����
echo ��������������������������������������������������
echo. & pause 
rem ������ʼ
echo ������ʼ�����ڵ�ʱ���Ϊ %date:/=-%%time:~0,-3% >"%userprofile%\desktop\Defrag.log"
echo ------------------------------------------------>>"%userprofile%\desktop\Defrag.log"
echo= >>"%userprofile%\desktop\Defrag.log"
echo= >>"%userprofile%\desktop\Defrag.log"

Defrag /c /u /v /h /x >>"%userprofile%\desktop\Defrag.log"
rem ��ʾ4
echo=
echo=
echo ����������������������������
echo -----ע��-----
echo ����ִ����ϣ�����������ػ���
echo=
echo ����������������������������
echo= >>"%userprofile%\desktop\Defrag.log"
echo= >>"%userprofile%\desktop\Defrag.log"
echo ------------------------------------------------>>"%userprofile%\desktop\Defrag.log"
echo �����ɹ������ڵ�ʱ���Ϊ %date:/=-%%time:~0,-3% >>"%userprofile%\desktop\Defrag.log"
rem �ػ�����

shutdown /s
rem ����ļ�λ��
rem "%userprofile%\desktop\Defrag.log"

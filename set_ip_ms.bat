@echo off 
color 2F
echo ����������������
echo ����IP,DNS
echo ����������������
echo=
echo=

choice /M "Y to set ΢�� DNS, N to restore to default:"

::Ҫ�޸ĵ�����������
set NET_NAME="WLAN"
::��̬IP
set NET_IP="192.168.0.173"
::��������
set NET_MASK="255.255.255.0"
::Ĭ������
set NET_GATE="192.168.0.1"
::��ѡDNS������
set DNS_FIRST="4.2.2.1"
::��ѡDNS������
SET DNS_SECOND="4.2.2.2"

if 1==%ERRORLEVEL% goto set
if 2==%ERRORLEVEL% goto restore

:set
netsh interface ipv4 set address %NET_NAME% static %NET_IP% %NET_MASK% %NET_GATE%
netsh interface ipv4 set dnsservers %NET_NAME% static %DNS_FIRST% primary no
netsh interface ipv4 add dnsservers %NET_NAME% %DNS_SECOND% index=2 no
ipconfig /flushdns
ipconfig /release
ipconfig /renew
goto done

:restore
::netsh interface ipv4 set address %NET_NAME% dhcp
::netsh interface ipv4 set dnsservers %NET_NAME% dhcp
netsh interface ipv4 set address %NET_NAME% static %NET_IP% %NET_MASK% %NET_GATE%
netsh interface ipv4 set dnsservers %NET_NAME% static 192.168.0.1 primary no
netsh interface ipv4 add dnsservers %NET_NAME% 202.141.178.13 index=2 no

ipconfig /flushdns
ipconfig /release
ipconfig /renew
goto done

:done



echo=
echo=
echo ����������������������������
echo �� �� �� ��
echo ����������������������������

timeout /t 3 /nobreak

echo. & pause

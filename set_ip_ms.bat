@echo off 
color 2F
echo ━━━━━━━━
echo 设置IP,DNS
echo ━━━━━━━━
echo=
echo=

choice /M "Y to set 微软 DNS, N to restore to default:"

::要修改的网络适配器
set NET_NAME="WLAN"
::静态IP
set NET_IP="192.168.0.173"
::子网掩码
set NET_MASK="255.255.255.0"
::默认网关
set NET_GATE="192.168.0.1"
::首选DNS服务器
set DNS_FIRST="4.2.2.1"
::备选DNS服务器
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
echo ━━━━━━━━━━━━━━
echo 操 作 成 功
echo ━━━━━━━━━━━━━━

timeout /t 3 /nobreak

echo. & pause

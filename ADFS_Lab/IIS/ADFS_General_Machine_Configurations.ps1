## allows the evaluation image to run without shutting each hour
slmgr.vbs -rearm;

## configures machine IP
New-NetIpAddress -InterfaceAlias 'Ethernet' -IpAddress 172.16.0.5 -PrefixLength 24;
Set-DnsClientServerAddress -InterfaceIndex 12 -ServerAddresses ("172.16.0.2");

## Rename The Computer
Rename-Computer WebServ1;

## Restart The Computer
Restart-Computer
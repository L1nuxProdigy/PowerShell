## import vars
. ..\ps_var_file.ps1
## configures machine IP - In AWS the private ip is first given from a logical component and thus the private ip configured in terraform
#New-NetIpAddress -InterfaceAlias 'Ethernet' -IpAddress 10.0.1.3 -PrefixLength 24;

## Rename The Computer
Rename-Computer DC

## Change the name of the built in local administrator and set it with a simple initial password
Rename-LocalUser -Name "Administrator" -NewName $domain_admin
Set-LocalUser -Name $domain_admin -Password $(ConvertTo-SecureString -string $domain_admin_password -AsPlainText -Force)

## Restart The Computer
Restart-Computer
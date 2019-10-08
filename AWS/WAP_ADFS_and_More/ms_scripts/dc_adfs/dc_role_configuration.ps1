## install AD DS role
Install-windowsfeature -name AD-Domain-Services -IncludeManagementTools;

## Promote and Configures The Machine to a Domain Controller
Install-ADDSForest `
-DomainName "ads.com" `
-DomainNetbiosName "ADS" `
-DomainMode "WinThreshold" `
-ForestMode "WinThreshold" `
-SafeModeAdministratorPassword (ConvertTo-SecureString "Rr123456" -AsPlainText -Force) `
-InstallDns:$true `
-CreateDnsDelegation:$false `
-DatabasePath "C:\Windows\NTDS" `
-SysvolPath "C:\Windows\SYSVOL" `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-Force:$true
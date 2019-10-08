## trial 1- didnt work
$A = New-ScheduledTaskAction -Execute "C:\Users\Administrator\Desktop\WAP_ADFS_and_More\ms_scripts\dc_ca_adfs\dc_role_configuration.ps1"
$T = New-ScheduledTaskTrigger -AtStartup
$P = New-ScheduledTaskPrincipal -UserId "$env:USERDOMAIN\$env:USERNAME" -LogonType S4U -RunLevel Highest
$S = New-ScheduledTaskSettingsSet
$D = New-ScheduledTask -Action $A -Principal $P -Trigger $T -Settings $S
Register-ScheduledTask "Install DC Role" -InputObject $D

## trial 2
$A = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument '-ExecutionPolicy Bypass C:\Users\Administrator\Desktop\WAP_ADFS_and_More\ms_scripts\dc_ca_adfs\dc_role_configuration.ps1'
$T = New-ScheduledTaskTrigger -AtStartup
$P = New-ScheduledTaskPrincipal -UserId "$env:USERDOMAIN\$env:USERNAME" -RunLevel Highest
$S = New-ScheduledTaskSettingsSet
$D = New-ScheduledTask -Action $A -Principal $P -Trigger $T -Settings $S
Register-ScheduledTask "Install DC Role" -InputObject $D
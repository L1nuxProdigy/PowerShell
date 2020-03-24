## Connect to Azure
# Requires Install-Module AzureAD 
Connect-AzureAD

## Connect to Exchange
$UserCredential = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection
Import-PSSession $Session -DisableNameChecking

## Connect to MSOL Service
Connect-MsolService
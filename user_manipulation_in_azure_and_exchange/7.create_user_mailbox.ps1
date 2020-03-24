## Creates a folder in the root folder hierarchy
New-MailboxFolder -Parent "$FirstNameLowerCase@$DomainName.com" -Name $FolderName

## Retrieves all Inbox rules for the specific mailbox
Get-InboxRule -Mailbox "$FirstNameLowerCase@$DomainName.com"

## Creates a move rule
New-InboxRule -Name "" -From "" -MoveToFolder $FolderName
New-InboxRule -Name "" -From "" -MoveToFolder $FolderName
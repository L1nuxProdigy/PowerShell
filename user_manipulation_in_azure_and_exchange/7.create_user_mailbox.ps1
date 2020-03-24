## Creates a folder in the root folder hierarchy
New-MailboxFolder -Parent "$FirstNameLowerCase@$DomainName.com" -Name $FolderName

## Creates a move rule
New-InboxRule -Name "" -Mailbox "$FirstNameLowerCase@$DomainName.com" -From "" -MoveToFolder :\$FolderName
New-InboxRule -Name "" -Mailbox "$FirstNameLowerCase@$DomainName.com" -From "" -MoveToFolder :\$FolderName

## Retrieves all Inbox rules for the specific mailbox
Get-InboxRule -Mailbox "$FirstNameLowerCase@$DomainName.com"
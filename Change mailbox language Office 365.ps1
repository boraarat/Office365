You can check the settings for an specific user:
Get-MailboxRegionalConfiguration user@domain.com

Or check it for all users:
Get-Mailbox | Get-MailboxRegionalConfiguration

When you want to change the language for a spesific user to norwegian:

Set-MailboxRegionalConfiguration -Identity user@domain.com -Language nb-NO -LocalizeDefaultFolderName:$true

or maybe you want to change all users to have English language:
Get-mailbox -ResultSize unlimited | Set-MailboxRegionalConfiguration -Language en-US -LocalizeDefaultFolderName:$true

###Microsoft'tan gelen###

Set-MailboxRegionalConfiguration -Identity "Bora Logosoft" -Language tr-tr -LocalizeDefaultFolderName

Set-ExecutionPolicy RemoteSigned

$UserCredential = Get-Credential

$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection

Import-PSSession $Session -DisableNameChecking

Set-OrganizationConfig -AutoExpandingArchive

Get-OrganizationConfig | FL AutoExpandingArchiveEnabled

Enable-Mailbox ahmet.d@linkshipping.com -AutoExpandingArchive

Get-Mailbox ahmet.d@linkshipping.com | FL AutoExpandingArchiveEnabled 


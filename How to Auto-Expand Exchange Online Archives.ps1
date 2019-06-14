
Set-ExecutionPolicy RemoteSigned

$UserCredential = Get-Credential

$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection

Import-PSSession $Session -DisableNameChecking

Set-OrganizationConfig -AutoExpandingArchive

Get-OrganizationConfig | FL AutoExpandingArchiveEnabled

Enable-Mailbox ahmet.d@l3inkshipping.com -AutoExpandingArchive

Get-Mailbox ahmet.d@l3ikshipping.com | FL AutoExpandingArchiveEnabled 



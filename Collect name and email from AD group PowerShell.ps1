#This script collects name and email from the Active Directory  group defined, exports to a CSV file as you define with a path and filename.
#Run directly on your AD server. If it does not work, server might be running an older version of PowerShell.
#Define Groupname as needed, but keep the quotes.

Get-ADGroupMember -Identity "Groupname" -Recursive | 
Get-ADUser -Properties Name,Mail | 
Select-Object Name,Mail | 
Export-CSV -Path C:\Scripts\Groupname.csv -NoTypeInformation
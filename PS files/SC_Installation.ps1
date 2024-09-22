[CmdletBinding()]
param(

    [string] $AuthMode = 'Mixed',
    [string] $Server
)


# Connect to the local SQL instance using SMO
$Server = hostname
# Comment the addition of SQLEXPRESS if you are not using named instance
$Server += '\SQLEXPRESS'
[System.Reflection.Assembly]::LoadWithPartialName('Microsoft.SqlServer.SMO') | out-null
$s = new-object('Microsoft.SqlServer.Management.Smo.Server') $Server
[string]$nm = $s.Name

$Command1 = ".\StoreCommerce.Installer.exe install --installoffline $nm --trustsqlservercertificate"
Invoke-Expression $Command1
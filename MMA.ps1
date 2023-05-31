[CmdletBinding()]
param(

    [string] $AuthMode = 'Mixed',
    [string] $Server
)


# Connect to the local SQL instance using SMO
$Server = hostname
# Comment the addition of \SQLEXPRESS if you are not using a named instance
$Server += '\SQLEXPRESS'
[System.Reflection.Assembly]::LoadWithPartialName('Microsoft.SqlServer.SMO') | out-null
$s = new-object('Microsoft.SqlServer.Management.Smo.Server') $Server
[string]$nm = $s.Name
[string]$mode = $s.Settings.LoginMode

# Change to Mixed Mode
$s.Settings.LoginMode = [Microsoft.SqlServer.Management.SMO.ServerLoginMode] $AuthMode
$s.Alter()

# Restart SQL Server to apply changes
Restart-Service -Name MSSQLSERVER
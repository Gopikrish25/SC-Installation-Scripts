Remove-AppxPackage -AllUsers Microsoft.Dynamics.Retail.Pos_100.837.72.32244_x86__tfm0as0j1fqzt #AppxPackage name may vary
Write-Host "AppxPackage is Uninstalling..."
Start-Sleep -Seconds 5
Write-Host "AppxPackage is Uninstalled Successfully"
cmd.exe /c "MsiExec.exe /X{AC761343-C4AB-43D5-AD10-CF7A60CCBC71} /qn"
Write-Host "Application is Uninstalling"
Start-Sleep -Seconds 5
Write-Host "Application is Uninstalled Successfully"
$FolderName = "C:\Program Files (X86)\Microsoft Dynamics 365\70"
if (Test-Path $FolderName) {
     Remove-Item $FolderName -Force -Recurse
     Write-Host "Modern POS folder has been deleted"
}

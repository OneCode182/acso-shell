# punto72.ps1
Clear-Host
Write-Host "Intentos fallidos de acceso:"

Get-EventLog -LogName Security -InstanceId 4625 | Select-Object TimeGenerated, Message | Format-Table

$total = (Get-EventLog -LogName Security -InstanceId 4625).Count
Write-Host "Total de intentos fallidos de ingreso: $total"

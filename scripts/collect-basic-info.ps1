# Basic System Information Collection Script
# Useful during initial triage to quickly gather context about a Windows endpoint

Write-Host "=== Basic System Information ===" -ForegroundColor Cyan
Write-Host "Computer Name: $env:COMPUTERNAME"
Write-Host "Current User: $env:USERNAME"
Write-Host "Domain: $env:USERDOMAIN"
Write-Host ""

Write-Host "=== Operating System ===" -ForegroundColor Cyan
Get-CimInstance Win32_OperatingSystem | Select-Object Caption, Version, OSArchitecture | Format-List

Write-Host "=== Network Adapters ===" -ForegroundColor Cyan
Get-NetIPAddress -AddressFamily IPv4 | Where-Object {$_.InterfaceAlias -notlike "*Loopback*"} | 
    Select-Object InterfaceAlias, IPAddress | Format-Table -AutoSize

Write-Host "=== Recent Security Events (Last 10 Logon-related) ===" -ForegroundColor Cyan
Get-WinEvent -FilterHashtable @{LogName='Security'; ID=4624,4625} -MaxEvents 10 -ErrorAction SilentlyContinue |
    Select-Object TimeCreated, Id, Message | Format-Table -Wrap

Write-Host "`nScript completed. Review the output and attach relevant details to your triage notes." -ForegroundColor Green

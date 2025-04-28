<#
.SYNOPSIS
    Ensures Application event log size is at least 32,768 KB (32 MB).

.DESCRIPTION
    This script ensures that the Application event log's maximum size is set to
    at least 32,768 KB (32 MB). This setting helps to ensure that event logs are not
    prematurely deleted and can hold more data for auditing and troubleshooting purposes.

.NOTES
    Author          : Finnis Caldwell
    LinkedIn        : linkedin.com/in/finniscaldwell
    GitHub          : github.com/feecasso
    Date Created    : 2025-04-27
    Last Modified   : 2025-04-27
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000500

.TESTED ON
    Date(s) Tested  : 2025-04-27
    Tested By       : Finnis Caldwell
    Systems Tested  : Windows 10 Pro, Windows 10 Enterprise
    PowerShell Ver. : 5.1+

.USAGE
    Run this script in PowerShell as Administrator to set the Application event log size.

    Example syntax:
    PS C:\> .\WN10-AU-000500_SetEventLogMaxSize.ps1
#>

$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application"
$name = "MaxSize"
$value = 32768

if (-not (Test-Path $path)) {
    New-Item -Path $path -Force | Out-Null
}
Set-ItemProperty -Path $path -Name $name -Value $value -Type DWord

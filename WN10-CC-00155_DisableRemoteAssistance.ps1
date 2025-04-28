<#
.SYNOPSIS
    Disables Remote Assistance on Windows 10 systems.

.DESCRIPTION
    This script modifies the Windows registry to disable Remote Assistance, preventing
    users from offering or requesting help through this feature.

.NOTES
    Author          : Finnis Caldwell
    LinkedIn        : linkedin.com/in/finniscaldwell
    GitHub          : github.com/feecasso
    Date Created    : 2025-04-27
    Last Modified   : 2025-04-27
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-00155

.TESTED ON
    Date(s) Tested  : 2025-04-27
    Tested By       : Finnis Caldwell
    Systems Tested  : Windows 10 Pro, Windows 10 Enterprise
    PowerShell Ver. : 5.1+

.USAGE
    Run this script in PowerShell as Administrator to disable Remote Assistance.

    Example syntax:
    PS C:\> .\WN10-CC-00155_DisableRemoteAssistance.ps1
#>

Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" `
                 -Name "fAllowToGetHelp" `
                 -Value 0 `
                 -Type DWord

<#
.SYNOPSIS
    Disables the use of the camera on the Windows lock screen.

.DESCRIPTION
    This script modifies the Windows registry to prevent the use of the camera
    on the lock screen. This helps ensure that users cannot access the camera
    from the lock screen, which might be a security concern in some environments.

.NOTES
    Author          : Finnis Caldwell
    LinkedIn        : linkedin.com/in/finniscaldwell
    GitHub          : github.com/feecasso
    Date Created    : 2025-04-27
    Last Modified   : 2025-04-27
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000370

.TESTED ON
    Date(s) Tested  : 2025-04-27
    Tested By       : Finnis Caldwell
    Systems Tested  : Windows 10 Pro, Windows 10 Enterprise
    PowerShell Ver. : 5.1+

.USAGE
    Run this script in PowerShell as Administrator to disable the lock screen camera.

    Example syntax:
    PS C:\> .\WN10-CC-000370_DisableLockScreenCamera.ps1
#>

Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization" `
                 -Name "NoLockScreenCamera" `
                 -Value 1 `
                 -Type DWord

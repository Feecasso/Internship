<#
.SYNOPSIS
    Disables the lock screen slideshow feature.

.DESCRIPTION
    This script modifies the Windows registry to disable the lock screen slideshow feature.
    It prevents users from seeing a slideshow of images on the lock screen, which could be
    a distraction or security concern.

.NOTES
    Author          : Finnis Caldwell
    LinkedIn        : linkedin.com/in/finniscaldwell
    GitHub          : github.com/feecasso
    Date Created    : 2025-04-27
    Last Modified   : 2025-04-27
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000005

.TESTED ON
    Date(s) Tested  : 2025-04-27
    Tested By       : Finnis Caldwell
    Systems Tested  : Windows 10 Pro, Windows 10 Enterprise
    PowerShell Ver. : 5.1+

.USAGE
    Run this script in PowerShell as Administrator to disable the lock screen slideshow.

    Example syntax:
    PS C:\> .\WN10-CC-000005_DisableLockScreenSlideshow.ps1
#>

Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization" `
                 -Name "NoLockScreenSlideshow" `
                 -Value 1 `
                 -Type DWord

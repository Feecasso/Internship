<#
.SYNOPSIS
    Disables PIN logon for domain users.

.DESCRIPTION
    This script disables the use of PIN logon for domain users, enforcing other forms
    of authentication that may be more secure or compliant with organizational policies.

.NOTES
    Author          : Finnis Caldwell
    LinkedIn        : linkedin.com/in/finniscaldwell
    GitHub          : github.com/feecasso
    Date Created    : 2025-04-27
    Last Modified   : 2025-04-27
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000010

.TESTED ON
    Date(s) Tested  : 2025-04-27
    Tested By       : Finnis Caldwell
    Systems Tested  : Windows 10 Pro, Windows 10 Enterprise
    PowerShell Ver. : 5.1+

.USAGE
    Run this script in PowerShell as Administrator to disable Domain PIN logon.

    Example syntax:
    PS C:\> .\WN10-CC-000010_DisableDomainPINLogon.ps1
#>

Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" `
                 -Name "AllowDomainPINLogon" `
                 -Value 0 `
                 -Type DWord

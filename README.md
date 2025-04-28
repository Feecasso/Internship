# Internship Log (N)Pacific

This repository contains PowerShell scripts designed to remediate several **Windows 10 STIG (Security Technical Implementation Guide)** findings by modifying specific registry keys to align with security best practices. Each script addresses one specific STIG ID.

## Table of Contents
- [Introduction](#introduction)
- [Scripts Overview](#scripts-overview)
- [Usage](#usage)
- [System Requirements](#system-requirements)
- [Contributing](#contributing)
- [License](#license)

## Introduction
This repository provides a collection of PowerShell scripts that ensure compliance with various **Windows 10 STIG** policies by modifying Windows registry settings. Each script is tailored to address specific security configurations related to Windows 10 enterprise environments. These scripts are designed to help administrators automate the remediation of security misconfigurations across multiple machines.

## Scripts Overview
Each PowerShell script below remediates a specific STIG ID related to **Windows 10** security settings. The scripts are organized by STIG ID and focus on registry-based configurations.

### Scripts Included
1. **WN10-CC-000370_DisableLockScreenCamera.ps1**  
   Disables the camera on the Windows lock screen.
   
2. **WN10-CC-000005_DisableLockScreenSlideshow.ps1**  
   Disables the lock screen slideshow feature.
   
3. **WN10-AU-000500_SetEventLogMaxSize.ps1**  
   Ensures the Application Event Log size is set to at least 32,768 KB (32 MB).
   
4. **WN10-CC-00155_DisableRemoteAssistance.ps1**  
   Disables Remote Assistance on Windows 10 systems.
   
5. **WN10-CC-000010_DisableDomainPINLogon.ps1**  
   Disables PIN logon for domain users.

## Usage
To use the scripts, follow these steps:

1. **Download the repository** or clone it using Git:
   ```bash
   https://github.com/Feecasso/Internship/tree/main

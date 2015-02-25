# AD Exporter Tool
![](https://github.com/vScripter/AD-Exporter/raw/Dev/Screen%20Shots/v1.5.0_Main.PNG)

# About
The AD Exporter Tool is a Windows PowerShell GUI that allows you to export various types of reports against a given Domain, or across the Forest.

### Domain Reports:
- Computers - Running Windows Server
- Computers - Running Windows 2000
- Computers - Running Windows XP
- Computers - Running Windows 7
- Computers - All Windows
- Computers - All Computers
- Computers - All Disabled
- Users - All Locked Out Accounts
- Users - All Disabled Accounts
- Users - All User Accounts
- Report - Stale Servers
- Report - Stale Computers
- Report - DC Inventory
- Text File - Windows Servers

### Forest Reports:
- All Computers - Windows
- All Computers - Running Windows Server
- All Servers - Text File Export
- All Servers - Stale Report
- All Domain Controllers

# Requirements
1. PowerShell v3.0 (or newer)
2. Windows RSAT (Remote Server Administration Tools)
3. Windows PowerShell ActiveDirectory Module
4. 'Run-As Administrator' when launching the tool if UAC is enabled

# Installation
1. Clone, Fork or download the .zip of the master source code
  * To download, you can copy/paste this into a PowerShell console, and it will download the module into your ~\Downloads directory.
  ```powershell
(New-Object System.Net.WebClient).DownloadFile("https://github.com/vMotioned/AD-Exporter/archive/master.zip","$ENV:USERPROFILE\Downloads\ProcessIsolation.zip")
```

2. If you download the source:
  * Un-Block the .zip before un-zipping
  * Un-zip the source code
 
3. Grab ``AD Exporter.exe`` and move it to a desired execution location 

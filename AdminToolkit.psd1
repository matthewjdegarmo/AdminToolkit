#
# Module manifest for module 'AdminToolkit'
#
# Generated by: Matthew J. DeGarmo
#
# Generated on: 8/4/2020
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'AdminToolkit.psm1'

# Version number of this module.
ModuleVersion = '1.1.0'

# Supported PSEditions
CompatiblePSEditions = 'Desktop', 'Core'

# ID used to uniquely identify this module
GUID = '74de0e6b-e0e3-4a71-a18f-2af03e4c3866'

# Author of this module
Author = 'Matthew J. DeGarmo'

# Company or vendor of this module
CompanyName = 'https://matthewjdegarmo.com'

# Copyright statement for this module
Copyright = '(c) Matthew J. DeGarmo. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Miscellaneous functions and utilities for Windows System Administrators.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.1'

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Get-Printers', 'Get-Management', 'Remove-Application', 'Remove-PrintQueue', 
                'Clear-Arp', 'Enable-Remoting', 'Copy-WithProgress', 'SU', 
                'Get-Definition', 'Invoke-Speech', 'Reset-NetworkAdapter', 
                'Remove-OlderThan', 'Reset-NetworkStack', 'Get-FolderSize', 
                'Get-FileOwner', 'Remove-Path', 'Locate', 'Get-Applications', 
                'Get-PrintManagement', 'Get-PublicIP', 'Remove-AllTempFiles', 
                'Get-PasswordExpired', 'Get-PCInfo', 'grep', 'New-Folder', 'PSRemote', 
                'Update-PowerShell', 'Get-CIDRNotationBySubnetMask', 
                'Push-LocalScheduledTask', 'Get-WindowsBuild', 'Watch-Command', 
                'DateStamp', 'TimeStamp', 'LL', 'Get-ContentWithLineNumbers', 'LLM', 
                'Get-PCUpTime', 'Clear-CCMCache', 'Get-RebootLogs'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'GD', 'Watch'

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/matthewjdegarmo/AdminToolkit/blob/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/matthewjdegarmo/AdminToolkit/'

        # ReleaseNotes of this module
        ReleaseNotes = 'https://github.com/matthewjdegarmo/AdminToolkit/blob/master/CHANGELOG.md'

    } # End of PSData hashtable

} # End of PrivateData hashtable

}


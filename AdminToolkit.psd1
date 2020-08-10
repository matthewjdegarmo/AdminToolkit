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
ModuleVersion = '1.0.0'

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
Description = 'Miscellaneous functions and utilities for System Administrators.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Get-Printers', 'Get-Management', 'Remove-Application', 'Remove-PrintQueue', 
                'Clear-Arp', 'Enable-Remoting', 'Copy-WithProgress', 'SU', 
                'Get-Definition', 'Invoke-Speech', 'Reset-NetworkAdapter', 
                'Remove-OlderThan', 'Reset-NetworkStack', 'Get-FolderSize', 
                'Get-FileOwner', 'Remove-Path', 'Locate', 'Get-Applications', 
                'Get-PrintManagement', 'Get-PublicIP', 'Remove-AllTempFiles', 
                'Get-PasswordExpired', 'Get-PCInfo', 'grep', 'New-Folder', 'PSRemote', 
                'Update-Powershell', 'Get-CIDRNotationBySubnetMask', 
                'Push-LocalScheduledTask', 'Get-WindowsBuild', 'Watch-Command', 
                'DateStamp', 'TimeStamp', 'LL', 'Get-ContentWithLineNumbers', 'LLM', 
                'Get-PCUpTime'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'GD', 'Watch'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        # Tags = @()

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/matthewjdegarmo/AdminToolkit/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/matthewjdegarmo/AdminToolkit/'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}


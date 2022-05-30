#
# Module manifest for module 'QBot'
#
# Generated by: Microsoft
#
# Generated on: 12/16/2021
#

@{

    # Script module or binary module file associated with this manifest.
    RootModule = 'QBot.psm1'

    # Version number of this module.
    ModuleVersion     = '1.0.0.0'

    # Supported PSEditions
    # CompatiblePSEditions = @()

    # ID used to uniquely identify this module
    GUID              = '97c66967-8416-4660-a22d-168a02fa5633'

    # Author of this module
    Author            = 'Microsoft'

    # Company or vendor of this module
    CompanyName       = 'Microsoft'

    # Copyright statement for this module
    Copyright         = '(c) Microsoft. All rights reserved.'

    # Description of the functionality provided by this module
    # Description = ''

    # Minimum version of the PowerShell engine required by this module
    # PowerShellVersion = ''

    # Name of the PowerShell host required by this module
    # PowerShellHostName = ''

    # Minimum version of the PowerShell host required by this module
    # PowerShellHostVersion = ''

    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = ''

    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # ClrVersion = ''

    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules   = @(
        @{ModuleName = 'Az.Accounts'; ModuleVersion = '2.7.0' },
        @{ModuleName = 'Az.Sql'; ModuleVersion = '3.6.0' },
        @{ModuleName = 'Az.Resources'; ModuleVersion = '5.1.0' },
        @{ModuleName = 'Az.KeyVault'; ModuleVersion = '4.1.0' },
        @{ModuleName = 'SqlServer'; ModuleVersion = '21.1.18256' },
        @{ModuleName = 'Microsoft.Graph.Applications'; ModuleVersion = '1.9.6' } ,
        @{ModuleName = 'Microsoft.Graph.DirectoryObjects'; ModuleVersion = '1.9.6' },
        @{ModuleName = 'Microsoft.Graph.Authentication'; ModuleVersion = '1.9.6' },
        @{ModuleName = 'Microsoft.Graph.Identity.DirectoryManagement'; ModuleVersion = '1.9.6' },
        @{ModuleName = 'Poshstache'; ModuleVersion = '0.1.10' }
    )

    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()

    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()

    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()

    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess = @()

    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    NestedModules = @(
        "./QBot.AppProvisioning.psm1",
        "./QBot.AzSql.psm1",
        "./QBot.Common.psm1",
        "./QBot.KeyVault.psm1",
        "./QBot.Manifest.psm1",
        "./QBot.QnaMaker.psm1"
    )

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = @('*')

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport   = @()

    # Variables to export from this module
    VariablesToExport = '*'

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport   = @()

    # DSC resources to export from this module
    # DscResourcesToExport = @()

    # List of all modules packaged with this module
    ModuleList        = @()

    # List of all files packaged with this module
    FileList          = @(
        "sql/AddAdSqlUser.sql",
        "sql/CreateQBotRole.sql",
        "sql/GenerateDropTablesSql.sql",
        "sql/GenerateGrantsSql.sql"
    )

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData       = @{

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            # Tags = @()

            # A URL to the license for this module.
            # LicenseUri = ''

            # A URL to the main website for this project.
            # ProjectUri = ''

            # A URL to an icon representing this module.
            # IconUri = ''

            # ReleaseNotes of this module
            # ReleaseNotes = ''

            # Prerelease string of this module
            # Prerelease = ''

            # Flag to indicate whether the module requires explicit user acceptance for install/update/save
            # RequireLicenseAcceptance = $false

            # External dependent modules of this module
            # ExternalModuleDependencies = @(
            # )

        } # End of PSData hashtable

    } # End of PrivateData hashtable

    # HelpInfo URI of this module
    # HelpInfoURI = ''

    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''

}

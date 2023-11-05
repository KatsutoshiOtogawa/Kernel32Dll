
@{
    ModuleName = 'Kernel32Dll'

    ModuleVersion = '$tagVersion'
    Author = 'Otogawa Katsutoshi'
    Copyright = 'Otogawa Katsutoshi. All rights reserved.'
    # Supported PSEditions
    CompatiblePSEditions = 'Core', 'Desktop'
    PowerShellVersion = '5.1'
    Description = 'Windows32 API Kernel32Dll.'
    GUID = 'f3192037-2de7-4995-bb20-83e4ea6fc3ff'
    FunctionsToExport = `
        'Get-SystemPowerStatus', `
        'Get-SystemPreferredUILanguages'

    PrivateData = @{
        PSData = @{
            ProjectUri = 'https://github.com/YourName/YourModule'
            LicenseUri = 'https://github.com/YourName/YourModule/blob/main/LICENSE'
            ReleaseNotes = 'Release notes for version 1.0'
        }
    }
    RequiredModules = @{

    }
}


# 

@{
    ModuleVersion = '#tagVersion'
    Author = 'Otogawa Katsutoshi'
    Copyright = 'Otogawa Katsutoshi. All rights reserved.'
    # Supported PSEditions
    CompatiblePSEditions = 'Core', 'Desktop'
    PowerShellVersion = '5.1'
    Description = 'Windows32 API Kernel32Dll.'
    GUID = 'f3192037-2de7-4995-bb20-83e4ea6fc3ff'
    ModuleToProcess = 'Kernel32Dll.psm1'
    FunctionsToExport = 'Get-SystemPowerStatus', 
        'Get-SystemPreferredUILanguages'

    PrivateData = @{
        PSData = @{
            Tags = 'Windows-API','Win32-API'
            ProjectUri = 'https://github.com/KatsutoshiOtogawa/Kernel32Dll'
            LicenseUri = 'https://github.com/KatsutoshiOtogawa/Kernel32Dll/blob/v#tagVersion/Kernel32Dll/LICENSE'
            ReleaseNotes = 'Release notes for version 1.0'
        }
    }
    # RequiredModules = @{

    # }
}

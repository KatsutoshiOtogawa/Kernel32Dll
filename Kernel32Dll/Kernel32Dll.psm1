$path = (Split-Path $MyInvocation.MyCommand.Path -Parent)
$src = Get-Content (Join-Path $path Kernel32Dll.cs) -Raw

Add-Type -TypeDefinition $src

function Get-SystemPowerStatus {
    param (
    )
    
    $lpSystemPowerStatus =  New-Object LPSYSTEM_POWER_STATUS
    [Kernel32Dll]::GetSystemPowerStatus([ref] $lpSystemPowerStatus)

    return $lpSystemPowerStatus
}

function Get-SystemPreferredUILanguages {
    param (
    )

    [uint] $pulNumLanguages = 0
    [uint]$dwFlags = 0

    [uint]$pcchLanguagesBuffer = 0;
    # [Kernel32Dll]::GetSystemPreferredUILanguages(0, [ref] $pulNumLanguages, $null,[ref] $buf)
    # 設定
    [Kernel32Dll]::GetSystemPreferredUILanguages($dwFlags, [out] $pulNumLanguages, $null,[ref] $pcchLanguagesBuffer)
}
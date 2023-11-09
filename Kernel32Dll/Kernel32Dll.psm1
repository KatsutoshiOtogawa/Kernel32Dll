$path = (Split-Path $MyInvocation.MyCommand.Path -Parent)
# $src = Get-Content (Join-Path $path Kernel32Dll.cs) -Raw

$src = ""
$src += Get-Content (Join-Path $path init.cs) -Raw
$src += Get-Content (Join-Path $path fileapi.cs) -Raw
$src += Get-Content (Join-Path $path winbase.cs) -Raw
$src += Get-Content (Join-Path $path winnls.cs) -Raw
$src += Get-Content (Join-Path $path winnt.cs) -Raw
$src += Get-Content (Join-Path $path wtypesbase.cs) -Raw

Add-Type -TypeDefinition $src

function Get-SystemPowerStatus {
    param (
    )
    
    $lpSystemPowerStatus =  New-Object Win32.LPSYSTEM_POWER_STATUS
    [Win32.Kernel32Dll]::GetSystemPowerStatus([ref] $lpSystemPowerStatus)

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
    [Win32.Kernel32Dll]::GetSystemPreferredUILanguages($dwFlags, [ref] $pulNumLanguages, $null,[ref] $pcchLanguagesBuffer)
}

function Create-FileA {
    param (
        [Parameter(Mandatory=$true)]
        [string]$lpFileName
    )

    $encoding = [System.Text.Encoding]::ASCII # 任意のエンコーディングを選択
    $lpFileBytes = $encoding.GetBytes($lpFileName)

    # バイト配列をsbyteの配列に変換
    $lpFileSBytes = [System.SByte[]]::new($lpFileBytes.Length)
    # private static extern IntPtr _CreateFileA(in sbyte[] lpFileName, in uint dwDesiredAccess, in uint dwShareMode, in LPSECURITY_ATTRIBUTES lpSecurityAttributes, in uint dwCreationDisposition, in uint dwFlagsAndAttributes, in IntPtr hTemplateFile);
    $lpSecurityAttributes = New-Object Win32.LPSECURITY_ATTRIBUTES

    $lpSecurityAttributes = $null
    $
    
#      GENERIC_READ、 GENERIC_WRITE、またはその両方 (GENERIC_READ | GENERIC_WRITE) です。 詳細については、「汎用アクセス権」、「ファイル セキュリティとアクセス権」、「ファイル アクセス権定数」、「ACCESS_MASK」を参照してください。

# このパラメーターが 0 の場合、アプリケーションはファイル、ディレクトリ、デバイスの属性などの特定のメタデータに対してクエリを実行できますが、そのファイルやデバイスにアクセスしなくても、 GENERIC_READ アクセスは拒否されます。
    # [Kernel32Dll]::CreateFileA([ref] lpFileSBytes, [ref] $lpSecurityAttributes, )

}

# Create-はメイメイ規則に背くが使うとDLLで何を呼び出しているのかわからないので、Createを使う。
# https://learn.microsoft.com/ja-jp/powershell/scripting/developer/cmdlet/approved-verbs-for-windows-powershell-commands?view=powershell-7.3

using System;
using System.Runtime.InteropServices;

[StructLayout(LayoutKind.Sequential)]
public struct LPSYSTEM_POWER_STATUS {
    public byte  ACLineStatus;
    public byte  BatteryFlag;
    public byte  BatteryLifePercent;
    public byte  SystemStatusFlag;
    public uint BatteryLifeTime;
    public uint BatteryFullLifeTime;
}

public class Kernel32Dll {
    [DllImport("Kernel32.dll", EntryPoint = "GetSystemPowerStatus")]
    private static extern int _GetSystemPowerStatus(ref LPSYSTEM_POWER_STATUS lpSystemPowerStatus);

    public static int GetSystemPowerStatus(ref LPSYSTEM_POWER_STATUS lpSystemPowerStatus) {

        var result = _GetSystemPowerStatus(ref lpSystemPowerStatus);

        // 値取得
        // Console.WriteLine(result);

        return result;

    }
    [DllImport("Kernel32.dll", EntryPoint = "GetSystemPreferredUILanguages", CharSet = CharSet.Auto)]
    private static extern int _GetSystemPreferredUILanguages(uint dwFlags, ref uint pulNumLanguages, IntPtr pwszLanguagesBuffer, ref uint pcchLanguagesBuffer);
    public static int GetSystemPreferredUILanguages(uint dwFlags, ref uint pulNumLanguages, IntPtr pwszLanguagesBuffer, ref uint pcchLanguagesBuffer) {

        var result = _GetSystemPreferredUILanguages(dwFlags, ref pulNumLanguages, pwszLanguagesBuffer, ref pcchLanguagesBuffer);
        return result;
    }
}

// using System;
// using System.Runtime.InteropServices;

namespace Win32 {

    [StructLayout(LayoutKind.Sequential)]
    public struct LPSYSTEM_POWER_STATUS {
        public byte  ACLineStatus;
        public byte  BatteryFlag;
        public byte  BatteryLifePercent;
        public byte  SystemStatusFlag;
        public uint BatteryLifeTime;
        public uint BatteryFullLifeTime;
    }

    public partial class Kernel32Dll {
        [DllImport("C:\Windows\System32\Kernel32.dll", EntryPoint = "GetSystemPowerStatus")]
        public static extern int _GetSystemPowerStatus(ref LPSYSTEM_POWER_STATUS lpSystemPowerStatus);

        public static int GetSystemPowerStatus(ref LPSYSTEM_POWER_STATUS lpSystemPowerStatus) {

            var result = _GetSystemPowerStatus(ref lpSystemPowerStatus);

            // 値取得
            // Console.WriteLine(result);

            return result;

        }
    }
}

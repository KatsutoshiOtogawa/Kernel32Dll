// using System;
// using System.Runtime.InteropServices;

namespace Win32 {

    public partial class Kernel32Dll {
        [DllImport("C:\Windows\System32\Kernel32.dll", EntryPoint = "GetSystemPreferredUILanguages", CharSet = CharSet.Auto)]
        public static extern int _GetSystemPreferredUILanguages(uint dwFlags, ref uint pulNumLanguages, IntPtr pwszLanguagesBuffer, ref uint pcchLanguagesBuffer);
        public static int GetSystemPreferredUILanguages(uint dwFlags, ref uint pulNumLanguages, IntPtr pwszLanguagesBuffer, ref uint pcchLanguagesBuffer) {

            var result = _GetSystemPreferredUILanguages(dwFlags, ref pulNumLanguages, pwszLanguagesBuffer, ref pcchLanguagesBuffer);
            return result;
        }
    }
}

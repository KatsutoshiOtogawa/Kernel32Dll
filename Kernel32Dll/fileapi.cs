// using System;
// using System.Runtime.InteropServices;

namespace Win32 {

    public partial class Kernel32Dll {
        [DllImport("C:\Windows\System32\Kernel32.dll", EntryPoint = "CreateFileA")]
        public static extern IntPtr _CreateFileA(in sbyte[] lpFileName, in uint dwDesiredAccess, in uint dwShareMode, in LPSECURITY_ATTRIBUTES lpSecurityAttributes, in uint dwCreationDisposition, in uint dwFlagsAndAttributes, in IntPtr hTemplateFile);

        public static IntPtr CreateFileA(in sbyte[] lpFileName, in uint dwDesiredAccess, in uint dwShareMode, in LPSECURITY_ATTRIBUTES lpSecurityAttributes, in uint dwCreationDisposition, in uint dwFlagsAndAttributes, in IntPtr hTemplateFile) {

            var result = _CreateFileA(in lpFileName, in dwDesiredAccess, in dwShareMode, in lpSecurityAttributes, in dwCreationDisposition, in dwFlagsAndAttributes, in hTemplateFile);

            return result;
        }
    }
}

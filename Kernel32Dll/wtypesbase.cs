// using System;
// using System.Runtime.InteropServices;

namespace Win32 {
    [StructLayout(LayoutKind.Sequential)]
    public struct LPSECURITY_ATTRIBUTES {
        public uint  nLength;
        public IntPtr lpSecurityDescriptor;
        public int  bInheritHandle;
    }
}

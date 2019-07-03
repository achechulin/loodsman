using System;
using System.Runtime.InteropServices;

namespace PluginSampleNet
{
    internal static class UnsafeNativeMethods
    {
        // SetWindowLong
        public const int GWL_HWNDPARENT = -8;
        // _controlfp
        // Default Delphi FPU control word
        public const int Default8087CW = 0x00001332;
        // Default CLR FPU control word
        public const int _CW_DEFAULT = 0x0009001F;
        //SetWindowLong won't work correctly for 64-bit: we should use SetWindowLongPtr instead.  On
        //32-bit, SetWindowLongPtr is just #defined as SetWindowLong.  SetWindowLong really should 
        //take/return int instead of IntPtr/HandleRef, but since we're running this only for 32-bit
        //it'll be OK.
        public static IntPtr SetWindowLong(IntPtr hWnd, int nIndex, IntPtr dwNewLong)
        {
            if (IntPtr.Size == 4)
            {
                return SetWindowLongPtr32(hWnd, nIndex, dwNewLong);
            }
            return SetWindowLongPtr64(hWnd, nIndex, dwNewLong);
        }
        [DllImport("user32.dll", CharSet = CharSet.Auto, EntryPoint = "SetWindowLong")]
        public static extern IntPtr SetWindowLongPtr32(IntPtr hWnd, int nIndex, IntPtr dwNewLong);
        [DllImport("user32.dll", CharSet = CharSet.Auto, EntryPoint = "SetWindowLongPtr")]
        public static extern IntPtr SetWindowLongPtr64(IntPtr hWnd, int nIndex, IntPtr dwNewLong);
        [DllImport("msvcrt.dll", CallingConvention = CallingConvention.Cdecl)]
        public static extern UInt32 _controlfp(UInt32 newControl, UInt32 mask);
        [DllImport("oleaut32.dll", CallingConvention = CallingConvention.StdCall)]
        public static extern IntPtr SysAllocString([MarshalAs(UnmanagedType.LPWStr)] string sz);
    }
}
